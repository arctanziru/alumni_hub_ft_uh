part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchFetched extends SearchEvent {}

class SearchQueryChanged extends SearchEvent {
  final String searchQuery;

  SearchQueryChanged(this.searchQuery);
}
