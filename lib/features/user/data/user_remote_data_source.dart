import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRemoteDataSource {
  final Api _api;

  UserRemoteDataSource(this._api);

  Future<List<UserModel>> getUsers(UserParams params) async {
    try {
      final response = await _api.createApiCall(
        endpoint: '/users',
        method: NetworkCallMethod.get,
        params: params.toJson(),
      );
      final users = response.data['data'] as List;
      return users.map((user) => UserModel.fromJson(user)).toList();
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException("An unexpected error occurred: $e");
    }
  }

  Future<UserModel> getUser(String nim) async {
    try {
      final response = await _api.createApiCall(
        endpoint: '/users/$nim',
        method: NetworkCallMethod.get,
      );
      return UserModel.fromJson(response.data['data']);
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException("An unexpected error occurred: $e");
    }
  }

  Future<UserModel> getProfile() async {
    try {
      final response = await _api.createApiCall(
        endpoint: '/users/profile',
        method: NetworkCallMethod.get,
      );
      return UserModel.fromJson(response.data['data']);
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException("An unexpected error occurred: $e");
    }
  }
}
