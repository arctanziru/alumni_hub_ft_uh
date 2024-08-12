// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyModelImpl _$$VacancyModelImplFromJson(Map<String, dynamic> json) =>
    _$VacancyModelImpl(
      idLoker: (json['id_loker'] as num).toInt(),
      judul: json['judul'] as String,
      idPerusahaan: (json['id_perusahaan'] as num).toInt(),
      slug: json['slug'] as String,
      konten: json['konten'] as String,
      tglSelesai: json['tgl_selesai'] as String,
      lokasi: json['lokasi'] as String,
      pengalamanKerja: json['pengalaman_kerja'] as String,
      role: json['role'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      perusahaan: Company.fromJson(json['perusahaan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VacancyModelImplToJson(_$VacancyModelImpl instance) =>
    <String, dynamic>{
      'id_loker': instance.idLoker,
      'judul': instance.judul,
      'id_perusahaan': instance.idPerusahaan,
      'slug': instance.slug,
      'konten': instance.konten,
      'tgl_selesai': instance.tglSelesai,
      'lokasi': instance.lokasi,
      'pengalaman_kerja': instance.pengalamanKerja,
      'role': instance.role,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'perusahaan': instance.perusahaan,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      idPerusahaan: (json['id_perusahaan'] as num).toInt(),
      namaPerusahaan: json['nama_perusahaan'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id_perusahaan': instance.idPerusahaan,
      'nama_perusahaan': instance.namaPerusahaan,
      'logo': instance.logo,
    };
