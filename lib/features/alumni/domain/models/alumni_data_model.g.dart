// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlumniDataResponseImpl _$$AlumniDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniDataResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AlumniModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlumniDataResponseImplToJson(
        _$AlumniDataResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AlumniDataBodyImpl _$$AlumniDataBodyImplFromJson(Map<String, dynamic> json) =>
    _$AlumniDataBodyImpl(
      nama: json['nama'] as String,
      tglLahir: json['tgl_lahir'] as String,
      nim: json['nim'] as String?,
    );

Map<String, dynamic> _$$AlumniDataBodyImplToJson(
        _$AlumniDataBodyImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'tgl_lahir': instance.tglLahir,
      'nim': instance.nim,
    };
