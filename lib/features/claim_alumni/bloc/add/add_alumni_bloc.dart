import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/claim_alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/add_alumni_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:cached_query/cached_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_alumni_event.dart';
part 'add_alumni_state.dart';

class AddAlumniBloc extends Bloc<AddAlumniEvent, AddAlumniState> {
  final ClaimAlumniRepository _getAlumnisRepository;
  AddAlumniBloc(this._getAlumnisRepository) : super(AddAlumniInitial()) {
    on<AddAlumni>((event, emit) async {
      return emit.forEach<QueryState<AddAlumniResponse>>(
        _getAlumnisRepository.addAlumni(event.addAlumniBody).stream,
        onData: (queryState) {
          if (queryState.status == QueryStatus.loading) {
            return AddAlumniLoading();
          } else if (queryState.status == QueryStatus.error) {
            return AddAlumniError(queryState.error);
          }
          return AddAlumniSuccess(queryState.data!);
        },
        onError: (error, stackTrace) {
          return AddAlumniError(CustomException(error.toString()));
        },
      );
    });
  }
}
