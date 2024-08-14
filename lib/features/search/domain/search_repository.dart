import 'package:alumni_hub_ft_uh/features/search/data/search_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/search/domain/models/search_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class SearchRepository {
  Query<SearchModel> getSearchData(String search);
}

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl extends SearchRepository {
  final SearchRemoteDataSource _searchRemoteDataSource;

  SearchRepositoryImpl(this._searchRemoteDataSource);

  @override
  Query<SearchModel> getSearchData(String search) {
    return Query<SearchModel>(
      key: ['search', search],
      queryFn: () => _searchRemoteDataSource.getSearchData(search),
    );
  }
}
