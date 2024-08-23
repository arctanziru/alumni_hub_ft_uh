import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_get_one.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserStateSignInLoading extends UserState {}

class UserStateSignUpLoading extends UserState {}

class UserStateSignOutLoading extends UserState {}

class UserStateGetProfileLoading extends UserState {}

class UserStateDeleteUserLoading extends UserState {}

class UserStateSignInWithGoogleLoading extends UserState {}

class UserStateSuccessSignIn extends UserState {
  final SignInResponse signInResponse;
  UserStateSuccessSignIn(this.signInResponse);
}

class UserStateSuccessSignUp extends UserState {
  final SignUpResponse signUpResponse;
  UserStateSuccessSignUp(this.signUpResponse);
}

class UserStateSuccessSignOut extends UserState {}

class UserStateSuccessGetProfile extends UserState {
  final UserGetOneResponse userModel;
  UserStateSuccessGetProfile(this.userModel);
}

class UserStateSuccessSignInWithGoogle extends UserState {
  final SignInWithGoogleResponse signInWithGoogleResponse;
  UserStateSuccessSignInWithGoogle(this.signInWithGoogleResponse);
}

class UserStateSuccessDeleteUser extends UserState {}

class UserStateException extends UserState {
  final CustomException exception;
  UserStateException(this.exception);
}
