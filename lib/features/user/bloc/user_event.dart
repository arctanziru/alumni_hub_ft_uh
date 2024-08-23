import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class UserEvent {}

class UserEventGetUserSession extends UserEvent {}

class UserEventSignIn extends UserEvent {
  final SignInBody signInBody;
  UserEventSignIn({required this.signInBody});
}

class UserEventSignUp extends UserEvent {
  final SignUpBody signUpBody;
  UserEventSignUp({required this.signUpBody});
}

class UserEventSignOut extends UserEvent {}

class UserEventGetProfile extends UserEvent {}

class UserEventClearUserSession extends UserEvent {}

class UserEventSignInWithGoogle extends UserEvent {}

class UserEventDeleteUser extends UserEvent {}
