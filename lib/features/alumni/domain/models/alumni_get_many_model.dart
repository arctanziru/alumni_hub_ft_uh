import 'package:freezed_annotation/freezed_annotation.dart';
import 'alumni_model.dart';

part 'alumni_get_many_model.freezed.dart';
part 'alumni_get_many_model.g.dart';

@freezed
class AlumniGetManyResponse with _$AlumniGetManyResponse {
  const factory AlumniGetManyResponse({
    required String message,
    required List<AlumniModel> data,
  }) = _AlumniGetManyResponse;

  factory AlumniGetManyResponse.fromJson(Map<String, dynamic> json) =>
      _$AlumniGetManyResponseFromJson(json);
}

@freezed
class AlumniJurusanResponse with _$AlumniJurusanResponse {
  const factory AlumniJurusanResponse({
    required String message,
    required List<JurusanData> data,
  }) = _AlumniJurusanResponse;

  factory AlumniJurusanResponse.fromJson(Map<String, dynamic> json) =>
      _$AlumniJurusanResponseFromJson(json);
}

@freezed
class AlumniJurusanParams with _$AlumniJurusanParams {
  const factory AlumniJurusanParams({
    required String angkatan,
    String? search,
  }) = _AlumniJurusanParams;

  factory AlumniJurusanParams.fromJson(Map<String, dynamic> json) =>
      _$AlumniJurusanParamsFromJson(json);
}

@freezed
class JurusanData with _$JurusanData {
  const factory JurusanData({
    required String jurusan,
    required int total,
  }) = _JurusanData;

  factory JurusanData.fromJson(Map<String, dynamic> json) =>
      _$JurusanDataFromJson(json);
}

@freezed
class AlumniAngkatanResponse with _$AlumniAngkatanResponse {
  const factory AlumniAngkatanResponse({
    required String message,
    required List<AngkatanData> data,
  }) = _AlumniAngkatanResponse;

  factory AlumniAngkatanResponse.fromJson(Map<String, dynamic> json) =>
      _$AlumniAngkatanResponseFromJson(json);
}

@freezed
class AlumniAngkatanParams with _$AlumniAngkatanParams {
  const factory AlumniAngkatanParams({
    String? search,
    bool? all,
    String? angkatan,
  }) = _AlumniAngkatanParams;

  factory AlumniAngkatanParams.fromJson(Map<String, dynamic> json) =>
      _$AlumniAngkatanParamsFromJson(json);
}

@freezed
class AngkatanData with _$AngkatanData {
  const factory AngkatanData({
    required String angkatan,
    required int total,
  }) = _AngkatanData;

  factory AngkatanData.fromJson(Map<String, dynamic> json) =>
      _$AngkatanDataFromJson(json);
}

@freezed
class AlumniGetManyParams with _$AlumniGetManyParams {
  const factory AlumniGetManyParams({
    required String angkatan,
    required String jurusan,
    String? search,
  }) = _AlumniGetManyParams;

  factory AlumniGetManyParams.fromJson(Map<String, dynamic> json) =>
      _$AlumniGetManyParamsFromJson(json);
}

@freezed
class AlumniBody with _$AlumniBody {
  const factory AlumniBody({
    String? nim,
    @JsonKey(name: 'no_anggota') String? noAnggota,
    String? nama,
    @JsonKey(name: 'tgl_lahir') String? tglLahir,
    String? jurusan,
    String? angkatan,
    EKelamin? kelamin,
    String? agama,
    @JsonKey(name: 'golongan_darah') String? golonganDarah,
  }) = _AlumniBody;

  factory AlumniBody.fromJson(Map<String, dynamic> json) =>
      _$AlumniBodyFromJson(json);
}
