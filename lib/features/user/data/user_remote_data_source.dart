import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRemoteDataSource {
  final Api _api;

  UserRemoteDataSource(this._api);

  Future<List<UserModel>> getUsers(UserParams params) async {
    final response = await _api.createApiCall(
      endpoint: '/users',
      method: NetworkCallMethod.get,
      params: params.toJson(),
    );
    final users = response.data['data'] as List;
    return users.map((user) => UserModel.fromJson(user)).toList();
  }

  Future<UserModel> getUser(String nim) async {
    final response = await _api.createApiCall(
      endpoint: '/users/$nim',
      method: NetworkCallMethod.get,
    );
    return UserModel.fromJson(response.data['data']);
  }

  Future<UserModel> getProfile() async {
    final response = await _api.createApiCall(
      endpoint: '/users/profile',
      method: NetworkCallMethod.get,
    );
    return UserModel.fromJson(response.data['data']);
  }
}
