// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_one.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGetOneResponseImpl _$$UserGetOneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserGetOneResponseImpl(
      message: json['message'] as String,
      data: UserGetOneData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserGetOneResponseImplToJson(
        _$UserGetOneResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$UserGetOneDataImpl _$$UserGetOneDataImplFromJson(Map<String, dynamic> json) =>
    _$UserGetOneDataImpl(
      idUser: (json['id_user'] as num).toInt(),
      email: json['email'] as String,
      avatar: json['avatar'] as String?,
      lastActive: json['last_active'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      alumni: json['alumni'] == null
          ? null
          : AlumniModel.fromJson(json['alumni'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserGetOneDataImplToJson(
        _$UserGetOneDataImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'email': instance.email,
      'avatar': instance.avatar,
      'last_active': instance.lastActive,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'alumni': instance.alumni,
    };
