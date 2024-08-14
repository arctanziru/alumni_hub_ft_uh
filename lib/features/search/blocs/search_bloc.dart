import 'dart:async';

import 'package:alumni_hub_ft_uh/features/search/domain/models/search_model.dart';
import 'package:alumni_hub_ft_uh/features/search/domain/search_repository.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:cached_query/cached_query.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _searchRepository;

  SearchBloc(this._searchRepository) : super(SearchState()) {
    on<SearchFetched>(_onSearchFetched);
    on<SearchQueryChanged>(_onSearchQueryChanged);
  }

  FutureOr<void> _onSearchFetched(
      SearchFetched event, Emitter<SearchState> emit) {
    final searchQuery = state.searchQuery;

    if (searchQuery == null || searchQuery.isEmpty) {
      emit(state.copyWith(
        status: SearchStatus.loaded,
        search: null,
      ));
    }

    return emit.forEach<QueryState<SearchModel>>(
        _searchRepository.getSearchData(searchQuery!).stream,
        onData: (queryState) {
      return state.copyWith(
        status: queryState.status == QueryStatus.loading
            ? SearchStatus.loading
            : queryState.status == QueryStatus.error
                ? SearchStatus.error
                : SearchStatus.loaded,
        search: queryState.data,
        error: CustomException(queryState.error?.message ?? 'Unknown error'),
      );
    });
  }

  FutureOr<void> _onSearchQueryChanged(
      SearchQueryChanged event, Emitter<SearchState> emit) {
    emit(state.copyWith(
      searchQuery: event.searchQuery,
    ));

    add(SearchFetched());
  }
}
