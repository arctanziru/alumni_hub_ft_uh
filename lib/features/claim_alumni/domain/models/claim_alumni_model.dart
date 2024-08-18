import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_alumni_model.freezed.dart';
part 'claim_alumni_model.g.dart';

@freezed
class ClaimAlumniResponse with _$ClaimAlumniResponse {
  const factory ClaimAlumniResponse({
    required String message,
    required AlumniModel data,
  }) = _ClaimAlumniResponse;

  factory ClaimAlumniResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimAlumniResponseFromJson(json);
}

@freezed
class ClaimAlumniResponseData with _$ClaimAlumniResponseData {
  const factory ClaimAlumniResponseData({
    required AlumniModel data,
  }) = _ClaimAlumniResponseData;

  factory ClaimAlumniResponseData.fromJson(Map<String, dynamic> json) =>
      _$ClaimAlumniResponseDataFromJson(json);
}

@freezed
// body
class ClaimAlumniBody with _$ClaimAlumniBody {
  const factory ClaimAlumniBody({
    required int idAlumni,
  }) = _ClaimAlumniBody;

  factory ClaimAlumniBody.fromJson(Map<String, dynamic> json) =>
      _$ClaimAlumniBodyFromJson(json);
}