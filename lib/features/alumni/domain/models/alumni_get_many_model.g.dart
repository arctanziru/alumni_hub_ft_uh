// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_get_many_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlumniGetManyResponseImpl _$$AlumniGetManyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniGetManyResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AlumniModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlumniGetManyResponseImplToJson(
        _$AlumniGetManyResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AlumniJurusanResponseImpl _$$AlumniJurusanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniJurusanResponseImpl(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => JurusanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlumniJurusanResponseImplToJson(
        _$AlumniJurusanResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AlumniJurusanParamsImpl _$$AlumniJurusanParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniJurusanParamsImpl(
      angkatan: (json['angkatan'] as num).toInt(),
      search: json['search'] as String?,
    );

Map<String, dynamic> _$$AlumniJurusanParamsImplToJson(
        _$AlumniJurusanParamsImpl instance) =>
    <String, dynamic>{
      'angkatan': instance.angkatan,
      'search': instance.search,
    };

_$JurusanDataImpl _$$JurusanDataImplFromJson(Map<String, dynamic> json) =>
    _$JurusanDataImpl(
      jurusan: json['jurusan'] as String,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$JurusanDataImplToJson(_$JurusanDataImpl instance) =>
    <String, dynamic>{
      'jurusan': instance.jurusan,
      'total': instance.total,
    };

_$AlumniAngkatanResponseImpl _$$AlumniAngkatanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniAngkatanResponseImpl(
      message: json['message'] as String,
      data: AngkatanData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AlumniAngkatanResponseImplToJson(
        _$AlumniAngkatanResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AlumniAngkatanParamsImpl _$$AlumniAngkatanParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniAngkatanParamsImpl(
      search: json['search'] as String?,
    );

Map<String, dynamic> _$$AlumniAngkatanParamsImplToJson(
        _$AlumniAngkatanParamsImpl instance) =>
    <String, dynamic>{
      'search': instance.search,
    };

_$AngkatanDataImpl _$$AngkatanDataImplFromJson(Map<String, dynamic> json) =>
    _$AngkatanDataImpl(
      angkatan: json['angkatan'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$AngkatanDataImplToJson(_$AngkatanDataImpl instance) =>
    <String, dynamic>{
      'angkatan': instance.angkatan,
      'count': instance.count,
    };

_$AlumniGetManyParamsImpl _$$AlumniGetManyParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AlumniGetManyParamsImpl(
      angkatan: (json['angkatan'] as num).toInt(),
      jurusan: json['jurusan'] as String,
      search: json['search'] as String?,
    );

Map<String, dynamic> _$$AlumniGetManyParamsImplToJson(
        _$AlumniGetManyParamsImpl instance) =>
    <String, dynamic>{
      'angkatan': instance.angkatan,
      'jurusan': instance.jurusan,
      'search': instance.search,
    };

_$AlumniBodyImpl _$$AlumniBodyImplFromJson(Map<String, dynamic> json) =>
    _$AlumniBodyImpl(
      nim: json['nim'] as String?,
      noAnggota: json['no_anggota'] as String?,
      nama: json['nama'] as String?,
      tglLahir: json['tgl_lahir'] as String?,
      jurusan: json['jurusan'] as String?,
      angkatan: json['angkatan'] as String?,
      kelamin: $enumDecodeNullable(_$EKelaminEnumMap, json['kelamin']),
      agama: json['agama'] as String?,
      golonganDarah: json['golongan_darah'] as String?,
    );

Map<String, dynamic> _$$AlumniBodyImplToJson(_$AlumniBodyImpl instance) =>
    <String, dynamic>{
      'nim': instance.nim,
      'no_anggota': instance.noAnggota,
      'nama': instance.nama,
      'tgl_lahir': instance.tglLahir,
      'jurusan': instance.jurusan,
      'angkatan': instance.angkatan,
      'kelamin': _$EKelaminEnumMap[instance.kelamin],
      'agama': instance.agama,
      'golongan_darah': instance.golonganDarah,
    };

const _$EKelaminEnumMap = {
  EKelamin.l: 'l',
  EKelamin.p: 'p',
};
