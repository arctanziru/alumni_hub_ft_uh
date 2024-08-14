part of 'search_bloc.dart';

enum SearchStatus { initial, loading, loaded, error }

class SearchState {
  final SearchStatus status;
  final SearchModel? search;
  final CustomException? error;
  final String? searchQuery;

  SearchState({
    this.status = SearchStatus.initial,
    this.search,
    this.error,
    this.searchQuery,
  });

  SearchState copyWith({
    SearchStatus? status,
    SearchModel? search,
    CustomException? error,
    String? searchQuery,
  }) {
    return SearchState(
      status: status ?? this.status,
      search: search ?? this.search,
      error: error ?? this.error,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  @override
  String toString() {
    return 'SearchState{status: $status, search: $search, error: $error}';
  }
}
