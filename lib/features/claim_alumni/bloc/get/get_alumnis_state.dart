part of 'get_alumnis_bloc.dart';

@immutable
abstract class GetAlumnisState {}

class GetAlumnisInitial extends GetAlumnisState {}

class GetAlumnisLoading extends GetAlumnisState {}

class GetAlumnisError extends GetAlumnisState {
  final CustomException exception;
  GetAlumnisError(this.exception);
}

class GetAlumnisSuccess extends GetAlumnisState {
  final GetAlumnisResponse getAlumnisResponse;
  GetAlumnisSuccess(this.getAlumnisResponse);
}