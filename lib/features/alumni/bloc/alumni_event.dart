part of 'alumni_bloc.dart';

@immutable
abstract class AlumniEvent {}

class AlumniEventGetAngkatan extends AlumniEvent {}

class AlumniEventGetJurusan extends AlumniEvent {}

class AlumniEventGetMany extends AlumniEvent {}
