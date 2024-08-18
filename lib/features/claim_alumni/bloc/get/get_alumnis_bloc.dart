import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/claim_alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/get_alumnis_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_alumnis_event.dart';
part 'get_alumnis_state.dart';

@injectable
class GetAlumnisBloc extends Bloc<GetAlumnisEvent, GetAlumnisState> {
  final ClaimAlumniRepository _getAlumnisRepository;

  GetAlumnisBloc(this._getAlumnisRepository) : super(GetAlumnisInitial()) {
    on<GetAlumnis>((event, emit) async {
      emit(GetAlumnisLoading());
      try {
        final response = await _getAlumnisRepository.getAlumnis(event.getAlumnisBody);
        emit(GetAlumnisSuccess(response));
      } on CustomException catch (e) {
        emit(GetAlumnisError(e));
      }
    });
  }
}
