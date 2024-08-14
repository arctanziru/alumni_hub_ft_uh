// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_get_one_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsGetOneModelResponseImpl _$$NewsGetOneModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsGetOneModelResponseImpl(
      message: json['message'] as String,
      data: NewsModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsGetOneModelResponseImplToJson(
        _$NewsGetOneModelResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
