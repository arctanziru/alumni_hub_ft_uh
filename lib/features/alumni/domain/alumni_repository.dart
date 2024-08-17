import 'package:alumni_hub_ft_uh/features/alumni/data/alumni_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_data_model.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class AlumniRepository {
  Query<AlumniDataResponse> getAlumni(AlumniDataBody body);
  Query<AlumniAngkatanResponse> getAngkatanAlumni(AlumniAngkatanParams params);
  Query<AlumniJurusanResponse> getJurusanAlumni(AlumniJurusanParams params);
  Query<AlumniGetManyResponse> getAlumniClaimData(AlumniGetManyParams params);
}

@LazySingleton(as: AlumniRepository)
class AlumniRepositoryImpl implements AlumniRepository {
  final AlumniRemoteDataSource _alumniRemoteDataSource;

  AlumniRepositoryImpl(this._alumniRemoteDataSource);

  @override
  Query<AlumniDataResponse> getAlumni(AlumniDataBody body) {
    return Query<AlumniDataResponse>(
        key: ['alumni', body],
        queryFn: () => _alumniRemoteDataSource.getAlumniData(body));
  }

  @override
  Query<AlumniAngkatanResponse> getAngkatanAlumni(AlumniAngkatanParams params) {
    return Query<AlumniAngkatanResponse>(
      key: ['alumni_angkatan'],
      queryFn: () => _alumniRemoteDataSource.getAngkatanAlumni(params),
    );
  }

  @override
  Query<AlumniJurusanResponse> getJurusanAlumni(AlumniJurusanParams params) {
    return Query<AlumniJurusanResponse>(
      key: ['alumni_jurusan'],
      queryFn: () => _alumniRemoteDataSource.getJurusanAlumni(params),
    );
  }

  @override
  Query<AlumniGetManyResponse> getAlumniClaimData(AlumniGetManyParams params) {
    return Query<AlumniGetManyResponse>(
      key: ['alumni_claim_data'],
      queryFn: () => _alumniRemoteDataSource.getAlumniClaimData(params),
    );
  }
}
