import 'package:alumni_hub_ft_uh/features/alumni/data/alumni_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class AlumniRepository {
  InfiniteQuery<AlumniGetManyModelResponse, int> getAlumni(
      AlumniGetManyParams? params);
}

@LazySingleton(as: AlumniRepository)
class AlumniRepositoryImpl implements AlumniRepository {
  final AlumniRemoteDataSource _alumniRemoteDataSource;

  AlumniRepositoryImpl(this._alumniRemoteDataSource);

  @override
  InfiniteQuery<AlumniGetManyModelResponse, int> getAlumni(
      AlumniGetManyParams? params) {
    return InfiniteQuery<AlumniGetManyModelResponse, int>(
      key: ['alumni', params?.search],
      queryFn: (page) => _alumniRemoteDataSource.AlumniData(
        AlumniGetManyParams(
          page: page,
          limit: params?.limit,
          search: params?.search,
          idAlumni: params?.idAlumni,
          nama: params?.nama,
          tglLahir: params?.tglLahir,
          nim: params?.nim,
        ),
      ),
      getNextArg: (state) {
        return 1;
      },
    );
  }
}
