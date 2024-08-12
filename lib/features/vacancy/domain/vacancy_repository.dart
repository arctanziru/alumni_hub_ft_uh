import 'package:alumni_hub_ft_uh/features/vacancy/data/vacancy_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/models/vacancy_get_many_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class VacancyRepository {
  InfiniteQuery<VacancyGetManyModelResponse, int> getVacancies(
      VacancyGetManyParams? params);
}

@LazySingleton(as: VacancyRepository)
class VacancyRepositoryImpl implements VacancyRepository {
  final VacancyRemoteDataSource _vacancyRemoteDataSource;

  VacancyRepositoryImpl(this._vacancyRemoteDataSource);

  @override
  InfiniteQuery<VacancyGetManyModelResponse, int> getVacancies(
      VacancyGetManyParams? params) {
    return InfiniteQuery<VacancyGetManyModelResponse, int>(
      key: ['vacancies',params?.search],
      queryFn: (page) => _vacancyRemoteDataSource.getVacancies(
        VacancyGetManyParams(
          page: page,
          limit: params?.limit,
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
}