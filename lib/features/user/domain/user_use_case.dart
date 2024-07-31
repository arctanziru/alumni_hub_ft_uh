import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_repository.dart';

class GetAllUsersUseCase {
  final UserRepository _userRepository;

  GetAllUsersUseCase(this._userRepository);

  Future<List<User>> call() async {
    return _userRepository.getUsers();
  }
}

class GetUserUseCase {
  final UserRepository _userRepository;

  GetUserUseCase(this._userRepository);

  Future<User> call(String nim) async {
    return _userRepository.getUser(nim);
  }
}
