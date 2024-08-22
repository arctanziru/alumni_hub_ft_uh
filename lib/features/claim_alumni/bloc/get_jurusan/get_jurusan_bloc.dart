import 'package:alumni_hub_ft_uh/features/claim_alumni/data/claim_alumni_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/get_all_jurusan_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_jurusan_event.dart';
part 'get_jurusan_state.dart';

@injectable
class GetJurusanBloc extends Bloc<GetJurusanEvent, GetJurusanState> {
  final ClaimAlumniRemoteDataSource _claimAlumniRemoteDataSource;

  GetJurusanBloc(this._claimAlumniRemoteDataSource) : super(GetJurusanInitial()) {
    on<GetAllJurusan>((event, emit) async {
      emit(GetJurusanLoading());
      try {
        final response = await _claimAlumniRemoteDataSource.getAllJurusan();
        emit(GetJurusanSuccess(response));
      } on CustomException catch (e) {
        emit(GetJurusanError(e));
      }
    });
  }
}
