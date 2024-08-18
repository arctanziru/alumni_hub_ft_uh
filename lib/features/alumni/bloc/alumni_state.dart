part of 'alumni_bloc.dart';

@immutable
abstract class AlumniState {}

class AlumniAngkatanInitial extends AlumniState {}

class AlumniJurusanInitial extends AlumniState {}

class AlumniGetManyInitial extends AlumniState {}

class AlumniUpdateInitial extends AlumniState {}

class AlumniAngkatanLoading extends AlumniState {}

class AlumniJurusanLoading extends AlumniState {}

class AlumniGetManyLoading extends AlumniState {}

class AlumniUpdateLoading extends AlumniState {}

class AlumniAngkatanSuccess extends AlumniState {
  final AlumniAngkatanResponse alumniAngkatanResponse;
  AlumniAngkatanSuccess(this.alumniAngkatanResponse);
}

class AlumniJurusanSuccess extends AlumniState {
  final AlumniJurusanResponse alumniJurusanResponse;
  AlumniJurusanSuccess(this.alumniJurusanResponse);
}

class AlumniGetManySuccess extends AlumniState {
  final AlumniGetManyResponse alumniGetManyResponse;
  AlumniGetManySuccess(this.alumniGetManyResponse);
}

class AlumniUpdateSuccess extends AlumniState {
  final AlumniResponse alumniUpdateResponse;
  AlumniUpdateSuccess(this.alumniUpdateResponse);
}

class AlumniAngkatanError extends AlumniState {
  final String message;
  AlumniAngkatanError(this.message);
}

class AlumniJurusanError extends AlumniState {
  final String message;
  AlumniJurusanError(this.message);
}

class AlumniGetManyError extends AlumniState {
  final String message;
  AlumniGetManyError(this.message);
}

class AlumniUpdateError extends AlumniState {
  final String message;
  AlumniUpdateError(this.message);
}
