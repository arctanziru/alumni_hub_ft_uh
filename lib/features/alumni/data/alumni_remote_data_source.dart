import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:alumni_hub_ft_uh/features/auth/popup_claim_alumni_data.dart';
import 'package:injectable/injectable.dart';

@singleton
class AlumniRemoteDataSource {
  final Api _api;

  AlumniRemoteDataSource(this._api);

  Future<AlumniGetManyModelResponse> AlumniData(AlumniGetManyModelBody) async {
    final response = await _api.createApiCall(
      endpoint: '/alumni/data',
      method: NetworkCallMethod.post,
      body: AlumniGetManyModelBody.toJson(),
    );
    return AlumniGetManyModelResponse.fromJson(response.data);
  }
}

