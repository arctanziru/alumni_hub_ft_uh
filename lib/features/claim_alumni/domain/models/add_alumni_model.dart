import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_alumni_model.freezed.dart';
part 'add_alumni_model.g.dart';

@freezed
class AddAlumniResponse with _$AddAlumniResponse {
  const factory AddAlumniResponse({
    required bool success,
    required String message,
    required AlumniModel data,
  }) = _AddAlumniResponse;

  factory AddAlumniResponse.fromJson(Map<String, dynamic> json) =>
      _$AddAlumniResponseFromJson(json);
}

@freezed
class AddAlumniResponseData with _$AddAlumniResponseData {
  const factory AddAlumniResponseData({
    required AlumniModel data,
  }) = _AddAlumniResponseData;

  factory AddAlumniResponseData.fromJson(Map<String, dynamic> json) =>
      _$AddAlumniResponseDataFromJson(json);
}

@freezed
class AddAlumniBody with _$AddAlumniBody {
  const factory AddAlumniBody({
    @JsonKey(name: 'nama') required String name,
    required String nim,
    @JsonKey(name: 'tgl_lahir')required String tglLahir,
    @JsonKey(name: 'jurusan') required String jurusan,
    required String angkatan,
    required String kelamin,
    required String agama,
    @JsonKey(name: 'golongan_darah') required String golonganDarah,
  }) = _AddAlumniBody;

  factory AddAlumniBody.fromJson(Map<String, dynamic> json) =>
      _$AddAlumniBodyFromJson(json);
}