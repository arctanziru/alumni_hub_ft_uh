part of 'add_alumni_bloc.dart';

@immutable
abstract class AddAlumniState {}

class AddAlumniInitial extends AddAlumniState {}

class AddAlumniLoading extends AddAlumniState {}

class AddAlumniError extends AddAlumniState {
  final CustomException exception;
  AddAlumniError(this.exception);
}

class AddAlumniSuccess extends AddAlumniState {
  final AddAlumniResponse addAlumniResponse;
  AddAlumniSuccess(this.addAlumniResponse);
}
