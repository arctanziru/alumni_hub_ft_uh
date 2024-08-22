part of 'get_jurusan_bloc.dart';

@immutable
abstract class GetJurusanState {}

class GetJurusanInitial extends GetJurusanState {}

class GetJurusanLoading extends GetJurusanState {}

class GetJurusanSuccess extends GetJurusanState {
  final GetAllJurusanResponse response;

  GetJurusanSuccess(this.response);
}

class GetJurusanError extends GetJurusanState {
  final CustomException exception;

  GetJurusanError(this.exception);
}
