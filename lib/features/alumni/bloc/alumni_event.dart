part of 'alumni_bloc.dart';

@immutable
abstract class AlumniEvent {}

class AlumniEventGetAngkatan extends AlumniEvent {}

class AlumniEventGetJurusan extends AlumniEvent {
  final AlumniJurusanParams alumniJurusanParams;
  AlumniEventGetJurusan(this.alumniJurusanParams);
}

class AlumniEventGetMany extends AlumniEvent {
  final AlumniGetManyParams alumniGetManyParams;
  AlumniEventGetMany(this.alumniGetManyParams);
}
