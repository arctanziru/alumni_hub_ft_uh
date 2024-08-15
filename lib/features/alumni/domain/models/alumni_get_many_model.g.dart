// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_get_many_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlumniGetManyModelResponseImpl _$$AlumniGetManyModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniGetManyModelResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AlumniModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlumniGetManyModelResponseImplToJson(
        _$AlumniGetManyModelResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AlumniGetManyModelBodyImpl _$$AlumniGetManyModelBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniGetManyModelBodyImpl(
      nama: json['nama'] as String,
      tglLahir: json['tgl_lahir'] as String,
      nim: json['nim'] as String?,
    );

Map<String, dynamic> _$$AlumniGetManyModelBodyImplToJson(
        _$AlumniGetManyModelBodyImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'tgl_lahir': instance.tglLahir,
      'nim': instance.nim,
    };
