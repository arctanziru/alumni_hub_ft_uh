// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_jurusan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllJurusanResponseImpl _$$GetAllJurusanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllJurusanResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GetAllJurusanResponseImplToJson(
        _$GetAllJurusanResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
