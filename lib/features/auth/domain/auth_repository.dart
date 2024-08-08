import 'package:alumni_hub_ft_uh/features/auth/data/auth_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<SignInResponse> signIn(SignInBody body);
  Future<SignUpResponse> signUp(SignUpBody body);
  Future<void> signOut();
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  const AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<SignInResponse> signIn(SignInBody body) async {
    return authRemoteDataSource.signIn(body);
  }

  @override
  Future<SignUpResponse> signUp(SignUpBody body) async {
    return authRemoteDataSource.signUp(body);
  }

  @override
  Future<void> signOut() async {
    return authRemoteDataSource.signOut();
  }
}
