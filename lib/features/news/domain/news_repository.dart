import 'package:alumni_hub_ft_uh/features/news/data/news_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_many_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class NewsRepository {
  InfiniteQuery<NewsGetManyModelResponse, int> getNews(
      NewsGetManyParams? params);
  Query<NewsCategoryGetManyModelResponse> getNewsCategory(
      NewsCategoryGetManyParams? params);
}

@LazySingleton(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource _newsRemoteDataSource;

  NewsRepositoryImpl(this._newsRemoteDataSource);

  @override
  InfiniteQuery<NewsGetManyModelResponse, int> getNews(
      NewsGetManyParams? params) {
    return InfiniteQuery<NewsGetManyModelResponse, int>(
      key: ['news', params?.idKategoriBerita, params?.search],
      queryFn: (page) => _newsRemoteDataSource.getNews(
        NewsGetManyParams(
          page: page,
          limit: params?.limit,
          idKategoriBerita: params?.idKategoriBerita,
          search: params?.search,
        ),
      ),
      getNextArg: (state) {
        if (state.lastPage == null) return 1;
        if (state.lastPage?.data.data.isEmpty ?? false) return null;
        if (state.lastPage!.data.currentPage >= state.lastPage!.data.lastPage) {
          return null;
        }
        return state.lastPage!.data.currentPage + 1;
      },
    );
  }

  @override
  Query<NewsCategoryGetManyModelResponse> getNewsCategory(
      NewsCategoryGetManyParams? params) {
    return Query<NewsCategoryGetManyModelResponse>(
      key: ['news_category'],
      queryFn: () => _newsRemoteDataSource.getNewsCategory(params),
    );
  }

  
}
