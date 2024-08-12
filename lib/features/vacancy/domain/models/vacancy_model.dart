import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy_model.freezed.dart';
part 'vacancy_model.g.dart';

@freezed
class VacancyModel with _$VacancyModel {
  const factory VacancyModel({
    @JsonKey(name: 'id_loker') required int idLoker,
    required String judul,
    @JsonKey(name: 'id_perusahaan') required int idPerusahaan,
    required String slug,
    required String konten,
    @JsonKey(name: 'tgl_selesai') required String tglSelesai,
    required String lokasi,
    @JsonKey(name: 'pengalaman_kerja') required String pengalamanKerja,
    required String role,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required Company perusahaan,
  }) = _VacancyModel;

  factory VacancyModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyModelFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'id_perusahaan') required int idPerusahaan,
    @JsonKey(name: 'nama_perusahaan') required String namaPerusahaan,
    required String logo,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}