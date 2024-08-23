import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_one_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class NewsRemoteDataSource {
  final Api _api;

  NewsRemoteDataSource(this._api);

  Future<NewsGetManyModelResponse> getNews(
      NewsGetManyParams newsGetManyParams) async {
    final response = await _api.createApiCall(
      endpoint: '/berita',
      method: NetworkCallMethod.get,
      params: newsGetManyParams.toJson(),
    );
    return NewsGetManyModelResponse.fromJson(response.data);
  }

  Future<NewsCategoryGetManyModelResponse> getNewsCategory(
      NewsCategoryGetManyParams? params) async {
    final response = await _api.createApiCall(
      endpoint: '/berita/kategori',
      method: NetworkCallMethod.get,
      params: params?.toJson(),
    );
    return NewsCategoryGetManyModelResponse.fromJson(response.data);
  }

  Future<NewsGetOneModelResponse> toggleLikeNews(int id) async {
    final response = await _api.createApiCall(
      endpoint: '/berita/like',
      method: NetworkCallMethod.post,
      body: {'id_berita': id},
    );
    return NewsGetOneModelResponse.fromJson(response.data);
  }
}
