part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class NewsFetched extends NewsEvent {}

class NewsCategoryFetched extends NewsEvent {}

class NewsRefreshed extends NewsEvent {
  final bool isClear;

  NewsRefreshed({this.isClear = false});
}

class NewsNextPage extends NewsEvent {}

class NewsFilterChanged extends NewsEvent {
  final int? idKategoriBerita;
  final String? search;

  NewsFilterChanged({this.idKategoriBerita, this.search});
}
