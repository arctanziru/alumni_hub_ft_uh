import 'package:alumni_hub_ft_uh/features/user/data/user_local_data_source.dart';
import 'package:alumni_hub_ft_uh/features/user/data/user_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  Future<List<UserModel>> getUsers(UserParams params);
  Future<UserModel> getUser(String nim);
  Future<UserModel> getProfile();
  Future<bool> saveUserSession(UserSession userSession);
  UserSession? getUserSession();
  Future<bool> deleteUserSession();
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;
  final UserLocalDataSource userLocalDataSource;

  const UserRepositoryImpl(
      {required this.userRemoteDataSource, required this.userLocalDataSource});

  @override
  Future<UserModel> getUser(String nim) async {
    return userRemoteDataSource.getUser(nim);
  }

  @override
  Future<List<UserModel>> getUsers(UserParams params) async {
    return userRemoteDataSource.getUsers(params);
  }

  @override
  Future<UserModel> getProfile() async {
    return userRemoteDataSource.getProfile();
  }

  @override
  Future<bool> saveUserSession(UserSession userSession) {
    return userLocalDataSource.saveUserSession(userSession);
  }

  @override
  UserSession? getUserSession() {
    return userLocalDataSource.getUserSession();
  }

  @override
  Future<bool> deleteUserSession() {
    return userLocalDataSource.deleteUserSession();
  }
}
