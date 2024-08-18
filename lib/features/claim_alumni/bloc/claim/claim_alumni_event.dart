part of 'claim_alumni_bloc.dart';

@immutable
abstract class ClaimAlumniEvent {}

class ClaimAlumni extends ClaimAlumniEvent {
  final ClaimAlumniBody claimAlumniBody;
  final String? token;
  ClaimAlumni({required this.claimAlumniBody, this.token});
}
