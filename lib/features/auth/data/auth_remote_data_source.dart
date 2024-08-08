import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:injectable/injectable.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';

@singleton
class AuthRemoteDataSource {
  final Api _api;

  AuthRemoteDataSource(this._api);

  Future<SignInResponse> signIn(SignInBody body) async {
    try {
      final response = await _api.createApiCall(
        endpoint: '/auth/signin',
        method: NetworkCallMethod.post,
        body: body.toJson(),
      );
      return SignInResponse.fromJson(response.data);
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException("An unexpected error occurred: $e");
    }
  }

  Future<SignUpResponse> signUp(SignUpBody body) async {
    try {
      final response = await _api.createApiCall(
        endpoint: '/auth/signup',
        method: NetworkCallMethod.post,
        body: body.toJson(),
      );
      return SignUpResponse.fromJson(response.data);
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException("An unexpected error occurred: $e");
    }
  }

  Future<void> signOut() async {
    try {
      await _api.createApiCall(
        endpoint: '/auth/signout',
        method: NetworkCallMethod.post,
      );
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException("An unexpected error occurred: $e");
    }
  }
}
