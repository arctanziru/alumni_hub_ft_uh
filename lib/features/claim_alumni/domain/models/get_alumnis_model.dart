import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_alumnis_model.freezed.dart';
part 'get_alumnis_model.g.dart';

@freezed
class GetAlumnisResponse with _$GetAlumnisResponse {
  const factory GetAlumnisResponse({
    required String message,
    required GetAlumnisResponseData data,
  }) = _GetAlumnisResponse;

  factory GetAlumnisResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAlumnisResponseFromJson(json);
}

@freezed
class GetAlumnisResponseData with _$GetAlumnisResponseData {
  const factory GetAlumnisResponseData({
    required List<AlumniModel> data,
  }) = _GetAlumnisResponseData;

  factory GetAlumnisResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetAlumnisResponseDataFromJson(json);
}

@freezed
class GetAlumnisBody with _$GetAlumnisBody {
  const factory GetAlumnisBody({
    @JsonKey(name: 'nama') required String name,
    @JsonKey(name: 'tgl_lahir')required String tglLahir,
    required String? nim,
  }) = _GetAlumnisBody;

  factory GetAlumnisBody.fromJson(Map<String, dynamic> json) =>
      _$GetAlumnisBodyFromJson(json);
}