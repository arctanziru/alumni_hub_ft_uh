import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alumni_data_model.freezed.dart';
part 'alumni_data_model.g.dart';

@freezed
class AlumniDataResponse with _$AlumniDataResponse {
  const factory AlumniDataResponse({
    required String message,
    required List<AlumniModel> data,
  }) = _AlumniDataResponse;

  factory AlumniDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AlumniDataResponseFromJson(json);
}

@freezed
class AlumniDataBody with _$AlumniDataBody {
  const factory AlumniDataBody({
    required String nama,
    @JsonKey(name: 'tgl_lahir') required String tglLahir,
    String? nim,
  }) = _AlumniDataBody;

  factory AlumniDataBody.fromJson(Map<String, dynamic> json) =>
      _$AlumniDataBodyFromJson(json);
}
