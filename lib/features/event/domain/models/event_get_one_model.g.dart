// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_get_one_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventGetOneModelResponseImpl _$$EventGetOneModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EventGetOneModelResponseImpl(
      message: json['message'] as String,
      data: EventModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventGetOneModelResponseImplToJson(
        _$EventGetOneModelResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
