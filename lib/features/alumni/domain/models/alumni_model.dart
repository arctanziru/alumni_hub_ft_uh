import 'package:freezed_annotation/freezed_annotation.dart';

part 'alumni_model.freezed.dart';
part 'alumni_model.g.dart';

enum EKelamin { l, p }

@freezed
class AlumniModel with _$AlumniModel {
  const factory AlumniModel({
    @JsonKey(name: 'id_alumni') required int idAlumni,
    @JsonKey(name: 'id_user') int? idUser,
    required String? nim,
    @JsonKey(name: 'no_anggota') String? noAnggota,
    required String nama,
    @JsonKey(name: 'tgl_lahir') required String tglLahir,
    required String jurusan,
    required String angkatan,
    EKelamin? kelamin,
    String? agama,
    @JsonKey(name: 'golongan_darah') String? golonganDarah,
    bool? validated,
    @JsonKey(name: 'is_claim') bool? isClaimed,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _AlumniModel;

  factory AlumniModel.fromJson(Map<String, dynamic> json) =>
      _$AlumniModelFromJson(json);
}
