import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_data_model.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:alumni_hub_ft_uh/features/auth/popup_claim_alumni_data.dart';
import 'package:injectable/injectable.dart';

@singleton
class AlumniRemoteDataSource {
  final Api _api;

  AlumniRemoteDataSource(this._api);

  Future<AlumniDataResponse> getAlumniData(AlumniDataBody body) async {
    final response = await _api.createApiCall(
        endpoint: '/alumni/data',
        method: NetworkCallMethod.get,
        body: body.toJson());
    return AlumniDataResponse.fromJson(response.data);
  }

  Future<AlumniAngkatanResponse> getAngkatanAlumni(
      AlumniAngkatanParams params) async {
    final response = await _api.createApiCall(
      endpoint: '/alumni',
      method: NetworkCallMethod.get,
    );
    return AlumniAngkatanResponse.fromJson(response.data);
  }

  Future<AlumniJurusanResponse> getJurusanAlumni(
      AlumniJurusanParams params) async {
    final response = await _api.createApiCall(
      endpoint: '/alumni',
      method: NetworkCallMethod.get,
      params: params.toJson(),
    );
    return AlumniJurusanResponse.fromJson(response.data);
  }

  Future<AlumniGetManyResponse> getAlumniClaimData(
      AlumniGetManyParams params) async {
    final response = await _api.createApiCall(
      endpoint: '/alumni',
      method: NetworkCallMethod.get,
      params: params.toJson(),
    );
    return AlumniGetManyResponse.fromJson(response.data);
  }

  Future<void> updateAlumni(AlumniBody body) async {
    await _api.createApiCall(
      endpoint: '/alumni',
      method: NetworkCallMethod.put,
      body: body.toJson(),
    );
  }
}
