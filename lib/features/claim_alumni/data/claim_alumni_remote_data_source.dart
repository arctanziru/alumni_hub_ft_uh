import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/add_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/claim_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/get_alumnis_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ClaimAlumniRemoteDataSource {
  final Api _api;

  ClaimAlumniRemoteDataSource(this._api);

  Future<GetAlumnisResponse> getAlumnis(GetAlumnisBody body) async {
    final response = await _api.createApiCall(
      endpoint: '/alumni/data',
      method: NetworkCallMethod.get,
      body: body.toJson(),
    );
    return GetAlumnisResponse.fromJson(response.data);
  }

  Future<AddAlumniResponse> addAlumni(AddAlumniBody body) async {
    final response = await _api.createApiCall(
        endpoint: '/alumni',
        method: NetworkCallMethod.post,
        body: body.toJson());
    return AddAlumniResponse.fromJson(response.data);
  }

  Future<ClaimAlumniResponse> claimAlumni(ClaimAlumniBody body) async {
    final response = await _api.createApiCall(
        endpoint: '/alumni/claim-data',
        method: NetworkCallMethod.post,
        body: {
          'id_alumni': body.idAlumni,
        });
    return ClaimAlumniResponse.fromJson(response.data);
  }
}
