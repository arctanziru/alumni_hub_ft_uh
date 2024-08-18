import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/claim_alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/claim_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/models/user_model.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_repository.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'claim_alumni_event.dart';
part 'claim_alumni_state.dart';

@injectable
class ClaimAlumniBloc extends Bloc<ClaimAlumniEvent, ClaimAlumniState> {
  final ClaimAlumniRepository _claimAlumniRepository;
  final UserRepository _userRepository;

  ClaimAlumniBloc(this._claimAlumniRepository, this._userRepository)
      : super(ClaimAlumniInitial()) {
    on<ClaimAlumni>((event, emit) async {
      emit(ClaimAlumniLoading());
      try {
        final claimAlumniResponse = await _claimAlumniRepository.claimAlumni(
            ClaimAlumniBody(idAlumni: event.claimAlumniBody.idAlumni));
        final profile = await _userRepository.getProfile();
        await _userRepository.saveUserSession(
            UserSession(token: event.token, user: profile.data));
        emit(ClaimAlumniSuccess(claimAlumniResponse));
      } on CustomException catch (e) {
        emit(ClaimAlumniError(e));
      }
    });
  }
}
