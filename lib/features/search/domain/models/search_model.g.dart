// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      message: json['message'] as String,
      success: json['success'] as bool,
      data: SearchData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'success': instance.success,
      'data': instance.data,
    };

_$SearchDataImpl _$$SearchDataImplFromJson(Map<String, dynamic> json) =>
    _$SearchDataImpl(
      berita: (json['berita'] as num).toInt(),
      loker: (json['loker'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchDataImplToJson(_$SearchDataImpl instance) =>
    <String, dynamic>{
      'berita': instance.berita,
      'loker': instance.loker,
    };
