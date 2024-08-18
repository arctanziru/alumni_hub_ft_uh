part of 'claim_alumni_bloc.dart';

@immutable
abstract class ClaimAlumniState {}

class ClaimAlumniInitial extends ClaimAlumniState {}

class ClaimAlumniLoading extends ClaimAlumniState {}

class ClaimAlumniError extends ClaimAlumniState {
  final CustomException exception;
  ClaimAlumniError(this.exception);
}

class ClaimAlumniSuccess extends ClaimAlumniState {
  final ClaimAlumniResponse claimAlumniResponse;
  ClaimAlumniSuccess(this.claimAlumniResponse);
}
