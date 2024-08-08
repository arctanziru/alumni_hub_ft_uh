part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class UserEventGetUserSession extends UserEvent {}

class UserEventSignIn extends UserEvent {
  final SignInBody signInBody;
  UserEventSignIn({
    required this.signInBody,
  });
}

class UserEventSignUp extends UserEvent {
  final SignUpBody signUpBody;
  UserEventSignUp({
    required this.signUpBody,
  });
}

class UserEventSignOut extends UserEvent {}

class UserEventGetProfile extends UserEvent {}

class UserEventClearUserSession extends UserEvent {}
