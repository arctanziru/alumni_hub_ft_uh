part of 'add_alumni_bloc.dart';

@immutable
abstract class AddAlumniEvent {}

class AddAlumni extends AddAlumniEvent {
  final AddAlumniBody addAlumniBody;
  AddAlumni({required this.addAlumniBody});
}