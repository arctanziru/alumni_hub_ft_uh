import 'dart:async';

import 'package:alumni_hub_ft_uh/features/vacancy/domain/models/vacancy_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/models/vacancy_model.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/vacancy_repository.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:cached_query/cached_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'vacancy_event.dart';
part 'vacancy_state.dart';

@injectable
class VacancyBloc extends Bloc<VacancyEvent, VacancyState> {
  final VacancyRepository _vacancyRepository;

  VacancyBloc(this._vacancyRepository) : super(VacancyState()) {
    on<VacancyFetched>(_onVacancyFetched);
    on<VacancyRefreshed>(_onVacancyRefreshed);
    on<VacancyNextPage>(_onVacancyNextPage);
  }

  FutureOr<void> _onVacancyFetched(VacancyFetched event, Emitter<VacancyState> emit) {
    return emit.forEach<InfiniteQueryState<VacancyGetManyModelResponse>>(
        _vacancyRepository
            .getVacancies(
          VacancyGetManyParams(
            search: state.search,
          ),
        )
            .stream, onData: (queryState) {
      return state.copyWith(
        status: queryState.status == QueryStatus.loading
            ? VacancyStatus.loading
            : queryState.status == QueryStatus.error
            ? VacancyStatus.error
            : VacancyStatus.loaded,
        vacancies: queryState.data?.expand((page) => page.data.data).toList() ?? [],
        error: CustomException(queryState.error?.message ?? 'Unknown error'),
      );
    });
  }

  FutureOr<void> _onVacancyRefreshed(VacancyRefreshed event, Emitter<VacancyState> emit) {
    if (event.isClear) {
      state.vacancies.clear();
      state.search = null;
    }
    final query = _vacancyRepository.getVacancies(
      VacancyGetManyParams(
        search: state.search,
      ),
    );
    query.refetch();
    return _onVacancyFetched(VacancyFetched(), emit);
  }

  FutureOr<void> _onVacancyNextPage(VacancyNextPage event, Emitter<VacancyState> emit) {
    _vacancyRepository
        .getVacancies(
      VacancyGetManyParams(
        search: state.search,
      ),
    )
        .getNextPage();
  }
}