import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/claim_alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/add_alumni_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_alumni_event.dart';
part 'add_alumni_state.dart';

@injectable
class AddAlumniBloc extends Bloc<AddAlumniEvent, AddAlumniState> {
  final ClaimAlumniRepository _getAlumnisRepository;
  AddAlumniBloc(this._getAlumnisRepository) : super(AddAlumniInitial()) {
    on<AddAlumni>((event, emit) async {
      emit(AddAlumniLoading());
      try {
        final response = await _getAlumnisRepository.addAlumni(event.addAlumniBody);
        emit(AddAlumniSuccess(response));
      } on CustomException catch (e) {
        emit(AddAlumniError(e));
      }
    });
  }
}
