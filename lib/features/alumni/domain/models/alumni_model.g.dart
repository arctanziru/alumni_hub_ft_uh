// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumni_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlumniModelImpl _$$AlumniModelImplFromJson(Map<String, dynamic> json) =>
    _$AlumniModelImpl(
      idAlumni: (json['id_alumni'] as num).toInt(),
      idUser: (json['id_user'] as num).toInt(),
      nim: json['nim'] as String,
      nama: json['nama'] as String,
      tglLahir: json['tgl_lahir'] as String,
      jurusan: json['jurusan'] as String,
      noTelp: json['no_telp'] as String,
      angkatan: json['angkatan'] as String,
      kelamin: json['kelamin'] as String,
      agama: json['agama'] as String,
      golonganDarah: json['golongan_darah'] as String,
      validated: json['validated'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$AlumniModelImplToJson(_$AlumniModelImpl instance) =>
    <String, dynamic>{
      'id_alumni': instance.idAlumni,
      'id_user': instance.idUser,
      'nim': instance.nim,
      'nama': instance.nama,
      'tgl_lahir': instance.tglLahir,
      'jurusan': instance.jurusan,
      'no_telp': instance.noTelp,
      'angkatan': instance.angkatan,
      'kelamin': instance.kelamin,
      'agama': instance.agama,
      'golongan_darah': instance.golonganDarah,
      'validated': instance.validated,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
