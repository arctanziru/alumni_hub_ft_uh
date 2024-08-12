part of 'news_bloc.dart';

enum NewsStatus { initial, loading, loaded, error }

class NewsState {
  final NewsStatus status;
  final List<NewsModel> news;
  final CustomException? error;
  int? idKategoriBerita;
  String? search;

  NewsState({
    this.status = NewsStatus.initial,
    this.news = const <NewsModel>[],
    this.error,
    this.idKategoriBerita,
    this.search,
  });

  NewsState copyWith({
    NewsStatus? status,
    List<NewsModel>? news,
    CustomException? error,
    int? idKategoriBerita,
    String? search,
  }) {
    return NewsState(
      status: status ?? this.status,
      news: news ?? this.news,
      error: error ?? this.error,
      idKategoriBerita: idKategoriBerita ?? this.idKategoriBerita,
      search: search ?? this.search,
    );
  }

  @override
  String toString() {
    return 'NewsState{status: $status, news: ${news.length}, error: $error}';
  }
}
