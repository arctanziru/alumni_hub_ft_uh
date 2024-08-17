import 'package:alumni_hub_ft_uh/features/alumni/domain/alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cached_query/cached_query.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part "alumni_event.dart";
part "alumni_state.dart";

@injectable
class AlumniBloc extends Bloc<AlumniEvent, AlumniState> {
  final AlumniRepository _alumniRepository;
  String? jurusan;
  int? angkatan;
  String? search;

  AlumniBloc(this._alumniRepository) : super(AlumniAngkatanInitial()) {
    on<AlumniEventGetAngkatan>((event, emit) async {
      final query = _alumniRepository.getAngkatanAlumni(AlumniAngkatanParams(
        search: search,
      ));
      return emit.forEach<QueryState<AlumniAngkatanResponse>>(query.stream,
          onData: (queryState) {
        if (queryState.status == QueryStatus.loading) {
          return AlumniAngkatanLoading();
        } else if (queryState.status == QueryStatus.error) {
          return AlumniAngkatanError(queryState.error.toString());
        }
        return AlumniAngkatanSuccess(queryState.data!);
      });
    });

    on<AlumniEventGetJurusan>((event, emit) async {
      final query = _alumniRepository.getJurusanAlumni(AlumniJurusanParams(
        angkatan: angkatan!,
        search: search,
      ));
      return emit.forEach<QueryState<AlumniJurusanResponse>>(query.stream,
          onData: (queryState) {
        if (queryState.status == QueryStatus.loading) {
          return AlumniJurusanLoading();
        } else if (queryState.status == QueryStatus.error) {
          return AlumniJurusanError(queryState.error.toString());
        }
        return AlumniJurusanSuccess(queryState.data!);
      });
    });

    on<AlumniEventGetMany>((event, emit) async {
      final query = _alumniRepository.getAlumniClaimData(AlumniGetManyParams(
        angkatan: angkatan!,
        jurusan: jurusan!,
        search: search,
      ));
      return emit.forEach<QueryState<AlumniGetManyResponse>>(query.stream,
          onData: (queryState) {
        if (queryState.status == QueryStatus.loading) {
          return AlumniGetManyLoading();
        } else if (queryState.status == QueryStatus.error) {
          return AlumniGetManyError(queryState.error.toString());
        }
        return AlumniGetManySuccess(queryState.data!);
      });
    });
  }
}
