part of 'get_alumnis_bloc.dart';

@immutable
abstract class GetAlumnisEvent {}

class GetAlumnis extends GetAlumnisEvent {
  final GetAlumnisBody getAlumnisBody;
  GetAlumnis({required this.getAlumnisBody});
}