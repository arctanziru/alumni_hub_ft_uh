part of 'news_bloc.dart';

enum NewsStatus { initial, loading, loaded, error }

class NewsState {
  final NewsStatus status;
  final NewsStatus statusCategory;
  final List<NewsModel> news;
  final List<NewsCategoryModel> newsCategory;
  final CustomException? error;
  final CustomException? errorCategory;
  int? idKategoriBerita;
  String? search;

  NewsState({
    this.status = NewsStatus.initial,
    this.news = const <NewsModel>[],
    this.error,
    this.idKategoriBerita,
    this.search,
    this.newsCategory = const <NewsCategoryModel>[],
    this.statusCategory = NewsStatus.initial,
    this.errorCategory,
  });

  NewsState copyWith({
    NewsStatus? status,
    List<NewsModel>? news,
    CustomException? error,
    int? idKategoriBerita,
    String? search,
    List<NewsCategoryModel>? newsCategory,
    NewsStatus? statusCategory,
    CustomException? errorCategory,
  }) {
    return NewsState(
      status: status ?? this.status,
      news: news ?? this.news,
      error: error ?? this.error,
      idKategoriBerita: idKategoriBerita ?? this.idKategoriBerita,
      search: search ?? this.search,
      newsCategory: newsCategory ?? this.newsCategory,
      statusCategory: statusCategory ?? this.statusCategory,
      errorCategory: errorCategory ?? this.errorCategory,
    );
  }

  @override
  String toString() {
    return 'NewsState{status: $status, news: ${news.length}, error: $error}';
  }
}
