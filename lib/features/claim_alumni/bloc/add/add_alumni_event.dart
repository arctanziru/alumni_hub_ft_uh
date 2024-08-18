part of 'add_alumni_bloc.dart';

@immutable
abstract class AddAlumniEvent {}

class AddAlumni extends AddAlumniEvent {
  final AddAlumniBody addAlumniBody;
  final String? token;
  AddAlumni({required this.addAlumniBody, this.token});
}