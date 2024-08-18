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
      nim: json['nim'] as String?,
      nama: json['nama'] as String,
      tglLahir: json['tgl_lahir'] as String,
      jurusan: json['jurusan'] as String,
      angkatan: json['angkatan'] as String,
      kelamin: json['kelamin'] as String?,
      agama: json['agama'] as String?,
      golonganDarah: json['golongan_darah'] as String?,
    );

Map<String, dynamic> _$$AlumniUpdateBodyImplToJson(
        _$AlumniUpdateBodyImpl instance) =>
    <String, dynamic>{
      'nim': instance.nim,
      'nama': instance.nama,
      'tgl_lahir': instance.tglLahir,
      'jurusan': instance.jurusan,
      'angkatan': instance.angkatan,
      'kelamin': instance.kelamin,
      'agama': instance.agama,
      'golongan_darah': instance.golonganDarah,
    };
