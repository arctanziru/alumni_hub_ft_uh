import 'package:freezed_annotation/freezed_annotation.dart';

part 'alumni_model.freezed.dart';
part 'alumni_model.g.dart';

@freezed
class AlumniModel with _$AlumniModel {
  const factory AlumniModel({
    @JsonKey(name: 'id_alumni') required int idAlumni,
    @JsonKey(name: 'id_user') required int idUser,
    required String nim,
    @JsonKey(name: 'no_anggota') required String? NoAnggota,
    required String nama,
    @JsonKey(name: 'tgl_lahir') required String tglLahir,
    required String jurusan,
    required String angkatan,
    required String kelamin,
    required String agama,
    @JsonKey(name: 'golongan_darah') required String golonganDarah,
    required bool validated,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _AlumniModel;

  factory AlumniModel.fromJson(Map<String, dynamic> json) =>
      _$AlumniModelFromJson(json);
}
