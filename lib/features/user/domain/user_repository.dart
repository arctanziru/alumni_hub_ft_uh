import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
  Future<User> getUser(String nim);
}
