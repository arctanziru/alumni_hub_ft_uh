import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/claim_alumni_repository.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/get_alumnis_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:cached_query/cached_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_alumnis_event.dart';
part 'get_alumnis_state.dart';

class GetAlumnisBloc extends Bloc<GetAlumnisEvent, GetAlumnisState> {
  final ClaimAlumniRepository _getAlumnisRepository;

  GetAlumnisBloc(this._getAlumnisRepository) : super(GetAlumnisInitial()) {
    on<GetAlumnis>((event, emit) async {
      return emit.forEach<QueryState<GetAlumnisResponse>>(
        _getAlumnisRepository.getAlumnis(event.getAlumnisBody).stream,
        onData: (queryState) {
          if (queryState.status == QueryStatus.loading) {
            return GetAlumnisLoading();
          } else if (queryState.status == QueryStatus.error) {
            return GetAlumnisError(queryState.error);
          }
          return GetAlumnisSuccess(queryState.data!);
        },
        onError: (error, stackTrace) {
          return GetAlumnisError(CustomException(error.toString()));
        },
      );
    });
  }
}
