part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserStateSignInLoading extends UserState {}

class UserStateSignUpLoading extends UserState {}

class UserStateSignOutLoading extends UserState {}

class UserStateGetProfileLoading extends UserState {}

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

class UserStateException extends UserState {
  final CustomException exception;
  UserStateException(this.exception);
}
