// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_alumnis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAlumnisResponseImpl _$$GetAlumnisResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAlumnisResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AlumniModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAlumnisResponseImplToJson(
        _$GetAlumnisResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$GetAlumnisResponseDataImpl _$$GetAlumnisResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAlumnisResponseDataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AlumniModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAlumnisResponseDataImplToJson(
        _$GetAlumnisResponseDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetAlumnisBodyImpl _$$GetAlumnisBodyImplFromJson(Map<String, dynamic> json) =>
    _$GetAlumnisBodyImpl(
      name: json['nama'] as String,
      tglLahir: json['tgl_lahir'] as String,
      jurusan: json['jurusan'] as String,
      nim: json['nim'] as String?,
    );

Map<String, dynamic> _$$GetAlumnisBodyImplToJson(
        _$GetAlumnisBodyImpl instance) =>
    <String, dynamic>{
      'nama': instance.name,
      'tgl_lahir': instance.tglLahir,
      'jurusan': instance.jurusan,
      'nim': instance.nim,
    };
