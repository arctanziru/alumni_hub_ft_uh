import 'package:alumni_hub_ft_uh/features/news/data/news_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_one_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class NewsRepository {
  InfiniteQuery<NewsGetManyModelResponse, int> getNews(
      NewsGetManyParams? params);
  Query<NewsCategoryGetManyModelResponse> getNewsCategory(
      NewsCategoryGetManyParams? params);
  Mutation<NewsGetOneModelResponse, int> toggleLikeNews(int id);
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

  @override
  Mutation<NewsGetOneModelResponse, int> toggleLikeNews(int id) {
    return Mutation<NewsGetOneModelResponse, int>(
      key: ['news_like', id],
      invalidateQueries: ['news'],
      refetchQueries: ['news'],
      queryFn: (int arg) {
        return _newsRemoteDataSource.toggleLikeNews(arg);
      },
      onStartMutation: (id) {
        CachedQuery.instance.updateQuery(
          key: ["news"],
          updateFn: (dynamic old) {
            if (old is NewsGetManyModelResponse) {
              return old.copyWith(
                data: old.data.copyWith(
                  data: old.data.data.map((news) {
                    if (news.idBerita == id) {
                      return news.copyWith(
                        isLiked: !news.isLiked,
                        totalLike: news.isLiked
                            ? news.totalLike - 1
                            : news.totalLike + 1,
                      );
                    }
                    return news;
                  }).toList(),
                ),
              );
            }
            return old;
          },
        );
      },
      
    );
  }
}
