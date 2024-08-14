part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class NewsFetched extends NewsEvent {}

class NewsCategoryFetched extends NewsEvent {}

class NewsRefreshed extends NewsEvent {
  final bool isClear;
  final String? search;

  NewsRefreshed({this.isClear = false, this.search});
}

class NewsNextPage extends NewsEvent {}

class NewsFilterChanged extends NewsEvent {
  final int? idKategoriBerita;
  final String? search;

  NewsFilterChanged({this.idKategoriBerita, this.search});
}

class NewsLikeToggled extends NewsEvent {
  final int id;

  NewsLikeToggled(this.id);
}
