import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/search/domain/models/search_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class SearchRemoteDataSource {
  final Api _api;

  SearchRemoteDataSource(this._api);

  Future<SearchModel> getSearchData(String search) async {
    final response = await _api.createApiCall(
      endpoint: '/search/$search',
      method: NetworkCallMethod.get,
    );
    return SearchModel.fromJson(response.data);
  }
}
