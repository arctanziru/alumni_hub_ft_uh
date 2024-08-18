import 'package:alumni_hub_ft_uh/features/claim_alumni/data/claim_alumni_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/add_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/claim_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/get_alumnis_model.dart';
import 'package:injectable/injectable.dart';

abstract class ClaimAlumniRepository {
  Future<GetAlumnisResponse> getAlumnis(GetAlumnisBody params);
  Future<AddAlumniResponse> addAlumni(AddAlumniBody params);
  Future<ClaimAlumniResponse> claimAlumni(ClaimAlumniBody params);
}

@LazySingleton(as: ClaimAlumniRepository)
class ClaimAlumniRepositoryImpl implements ClaimAlumniRepository {
  final ClaimAlumniRemoteDataSource _alumniRemoteDataSource;

  ClaimAlumniRepositoryImpl(this._alumniRemoteDataSource);

  @override
  Future<AddAlumniResponse> addAlumni(AddAlumniBody params) async {
    return _alumniRemoteDataSource.addAlumni(params);
  }

  @override
  Future<ClaimAlumniResponse> claimAlumni(ClaimAlumniBody params) async {
    return _alumniRemoteDataSource.claimAlumni(params);
  }

  @override
  Future<GetAlumnisResponse> getAlumnis(GetAlumnisBody params) async {
    return _alumniRemoteDataSource.getAlumnis(params);
  }
}
