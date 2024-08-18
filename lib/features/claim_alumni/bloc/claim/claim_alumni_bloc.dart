import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/claim_alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/claim_alumni_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_alumni_event.dart';
part 'claim_alumni_state.dart';

class ClaimAlumniBloc extends Bloc<ClaimAlumniEvent, ClaimAlumniState> {
  final ClaimAlumniRepository _claimAlumniRepository;

  ClaimAlumniBloc(this._claimAlumniRepository) : super(ClaimAlumniInitial()) {
    on<ClaimAlumni>((event, emit) async {
      emit(ClaimAlumniLoading());
      try {
        final claimAlumniResponse = await _claimAlumniRepository
            .claimAlumni(ClaimAlumniBody(idAlumni: event.claimAlumniBody.idAlumni));
        emit(ClaimAlumniSuccess(claimAlumniResponse));
      } on CustomException catch (e) {
        emit(ClaimAlumniError(e));
      }
    });
  }
}
