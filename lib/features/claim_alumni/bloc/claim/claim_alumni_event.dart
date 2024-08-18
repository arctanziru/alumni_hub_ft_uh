part of 'claim_alumni_bloc.dart';

@immutable
abstract class ClaimAlumniEvent {}

class ClaimAlumni extends ClaimAlumniEvent {
  final ClaimAlumniBody claimAlumniBody;
  ClaimAlumni({required this.claimAlumniBody});
}
