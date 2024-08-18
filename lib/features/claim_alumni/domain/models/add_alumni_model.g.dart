// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_alumni_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddAlumniResponseImpl _$$AddAlumniResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddAlumniResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: AlumniModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddAlumniResponseImplToJson(
        _$AddAlumniResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$AddAlumniResponseDataImpl _$$AddAlumniResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AddAlumniResponseDataImpl(
      data: AlumniModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddAlumniResponseDataImplToJson(
        _$AddAlumniResponseDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AddAlumniBodyImpl _$$AddAlumniBodyImplFromJson(Map<String, dynamic> json) =>
    _$AddAlumniBodyImpl(
      name: json['nama'] as String,
      nim: json['nim'] as String,
      tglLahir: json['tgl_lahir'] as String,
      jurusan: json['jurusan'] as String,
      angkatan: json['angkatan'] as String,
      kelamin: json['kelamin'] as String,
      agama: json['agama'] as String,
      golonganDarah: json['golongan_darah'] as String,
    );

Map<String, dynamic> _$$AddAlumniBodyImplToJson(_$AddAlumniBodyImpl instance) =>
    <String, dynamic>{
      'nama': instance.name,
      'nim': instance.nim,
      'tgl_lahir': instance.tglLahir,
      'jurusan': instance.jurusan,
      'angkatan': instance.angkatan,
      'kelamin': instance.kelamin,
      'agama': instance.agama,
      'golongan_darah': instance.golonganDarah,
    };
