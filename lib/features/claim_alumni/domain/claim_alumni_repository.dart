import 'package:alumni_hub_ft_uh/features/claim_alumni/data/claim_alumni_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/add_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/claim_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/get_alumnis_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class ClaimAlumniRepository {
  Query<GetAlumnisResponse> getAlumnis(GetAlumnisBody params);
  Query<AddAlumniResponse> addAlumni(AddAlumniBody params);
  Future<ClaimAlumniResponse> claimAlumni(ClaimAlumniBody params);
}

@LazySingleton(as: ClaimAlumniRepository)
class ClaimAlumniRepositoryImpl implements ClaimAlumniRepository {
  final ClaimAlumniRemoteDataSource _alumniRemoteDataSource;

  ClaimAlumniRepositoryImpl(this._alumniRemoteDataSource);

  @override
  Query<AddAlumniResponse> addAlumni(AddAlumniBody params) {
    return Query<AddAlumniResponse>(
      key: ['add_alumni'],
      queryFn: () => _alumniRemoteDataSource.addAlumni(params),
    );
  }

  @override
  Future<ClaimAlumniResponse> claimAlumni(ClaimAlumniBody params) async {
    return _alumniRemoteDataSource.claimAlumni(params);
  }

  @override
  Query<GetAlumnisResponse> getAlumnis(GetAlumnisBody params) {
    return Query<GetAlumnisResponse>(
      key: ['get_alumnis'],
      queryFn: () => _alumniRemoteDataSource.getAlumnis(params),
    );
  }
}
