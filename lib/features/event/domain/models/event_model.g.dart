// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      idEvent: (json['id_event'] as num).toInt(),
      judul: json['judul'] as String,
      slug: json['slug'] as String,
      gambar: json['gambar'] as String,
      konten: json['konten'] as String,
      penyelenggara: json['penyelenggara'] as String,
      tglEvent: json['tgl_event'] as String,
      lokasiEvent: json['lokasi_event'] as String,
      kuota: (json['kuota'] as num).toInt(),
      peserta: (json['peserta'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id_event': instance.idEvent,
      'judul': instance.judul,
      'slug': instance.slug,
      'gambar': instance.gambar,
      'konten': instance.konten,
      'penyelenggara': instance.penyelenggara,
      'tgl_event': instance.tglEvent,
      'lokasi_event': instance.lokasiEvent,
      'kuota': instance.kuota,
      'peserta': instance.peserta,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
