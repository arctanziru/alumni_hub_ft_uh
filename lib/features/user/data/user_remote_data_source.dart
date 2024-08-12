import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_get_one.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRemoteDataSource {
  final Api _api;

  UserRemoteDataSource(this._api);

  Future<UserGetOneResponse> getProfile() async {
    final response = await _api.createApiCall(
      endpoint: '/user',
      method: NetworkCallMethod.get,
    );
    return UserGetOneResponse.fromJson(response.data);
  }
}
