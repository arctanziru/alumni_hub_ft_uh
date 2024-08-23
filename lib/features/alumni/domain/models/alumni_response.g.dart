// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlumniResponseImpl _$$AlumniResponseImplFromJson(Map<String, dynamic> json) =>
    _$AlumniResponseImpl(
      message: json['message'] as String,
      data: AlumniModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AlumniResponseImplToJson(
        _$AlumniResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AlumniUpdateBodyImpl _$$AlumniUpdateBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniUpdateBodyImpl(
      agama: json['agama'] as String?,
      noTelp: json['no_telp'] as String?,
      golonganDarah: json['golongan_darah'] as String?,
    );

Map<String, dynamic> _$$AlumniUpdateBodyImplToJson(
        _$AlumniUpdateBodyImpl instance) =>
    <String, dynamic>{
      'agama': instance.agama,
      'no_telp': instance.noTelp,
      'golongan_darah': instance.golonganDarah,
    };
