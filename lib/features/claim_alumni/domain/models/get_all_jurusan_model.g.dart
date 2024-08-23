// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_jurusan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllJurusanResponseImpl _$$GetAllJurusanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllJurusanResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Jurusan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllJurusanResponseImplToJson(
        _$GetAllJurusanResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$JurusanImpl _$$JurusanImplFromJson(Map<String, dynamic> json) =>
    _$JurusanImpl(
      idJurusan: (json['id_jurusan'] as num).toInt(),
      namaJurusan: json['nama_jurusan'] as String,
      kodeJurusan: json['kode_jurusan'] as String,
    );

Map<String, dynamic> _$$JurusanImplToJson(_$JurusanImpl instance) =>
    <String, dynamic>{
      'id_jurusan': instance.idJurusan,
      'nama_jurusan': instance.namaJurusan,
      'kode_jurusan': instance.kodeJurusan,
    };
