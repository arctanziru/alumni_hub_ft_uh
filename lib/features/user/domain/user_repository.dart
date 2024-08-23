import 'package:alumni_hub_ft_uh/features/user/data/user_local_data_source.dart';
import 'package:alumni_hub_ft_uh/features/user/data/user_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_get_one.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  Future<UserGetOneResponse> getProfile();
  Future<bool> saveUserSession(UserSession userSession);
  UserSession? getUserSession();
  Future<bool> deleteUserSession();
  Future<void> deleteUser();
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;
  final UserLocalDataSource userLocalDataSource;

  const UserRepositoryImpl(
      {required this.userRemoteDataSource, required this.userLocalDataSource});

  @override
  Future<UserGetOneResponse> getProfile() async {
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

  @override
  Future<bool> deleteUser() {
    return userRemoteDataSource.deleteUser();
  }
}
