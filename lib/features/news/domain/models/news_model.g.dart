// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      idBerita: (json['id_berita'] as num).toInt(),
      idKategoriBerita: (json['id_kategori_berita'] as num).toInt(),
      kategori:
          NewsCategoryModel.fromJson(json['kategori'] as Map<String, dynamic>),
      judul: json['judul'] as String,
      penulis: json['penulis'] as String,
      slug: json['slug'] as String,
      gambar: json['gambar'] as String,
      konten: json['konten'] as String,
      isLiked: json['is_liked'] as bool,
      totalLike: (json['total_like'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      required: json['required'],
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'id_berita': instance.idBerita,
      'id_kategori_berita': instance.idKategoriBerita,
      'kategori': instance.kategori,
      'judul': instance.judul,
      'penulis': instance.penulis,
      'slug': instance.slug,
      'gambar': instance.gambar,
      'konten': instance.konten,
      'is_liked': instance.isLiked,
      'total_like': instance.totalLike,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'required': instance.required,
    };

_$NewsCategoryModelImpl _$$NewsCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsCategoryModelImpl(
      idKategoriBerita: (json['id_kategori_berita'] as num).toInt(),
      kategori: json['kategori'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$NewsCategoryModelImplToJson(
        _$NewsCategoryModelImpl instance) =>
    <String, dynamic>{
      'id_kategori_berita': instance.idKategoriBerita,
      'kategori': instance.kategori,
      'slug': instance.slug,
    };
