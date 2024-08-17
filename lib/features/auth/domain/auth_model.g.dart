// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseImpl _$$SignUpResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignUpResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: SignUpResponseData.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$SignUpResponseImplToJson(
        _$SignUpResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'token': instance.token,
    };

_$SignUpResponseDataImpl _$$SignUpResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseDataImpl(
      email: json['email'] as String,
      updatedAt: json['updated_at'] as String,
      createdAt: json['created_at'] as String,
      idUser: (json['id_user'] as num).toInt(),
    );

Map<String, dynamic> _$$SignUpResponseDataImplToJson(
        _$SignUpResponseDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id_user': instance.idUser,
    };

_$SignUpBodyImpl _$$SignUpBodyImplFromJson(Map<String, dynamic> json) =>
    _$SignUpBodyImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$$SignUpBodyImplToJson(_$SignUpBodyImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
    };

_$SignInResponseImpl _$$SignInResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignInResponseImpl(
      token: json['token'] as String,
      data: SignInResponseData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$SignInResponseImplToJson(
        _$SignInResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_$SignInResponseDataImpl _$$SignInResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInResponseDataImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$SignInResponseDataImplToJson(
        _$SignInResponseDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$SignInBodyImpl _$$SignInBodyImplFromJson(Map<String, dynamic> json) =>
    _$SignInBodyImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignInBodyImplToJson(_$SignInBodyImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$SignInWithGoogleResponseImpl _$$SignInWithGoogleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInWithGoogleResponseImpl(
      token: json['token'] as String,
      data: UserGetOneData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$$SignInWithGoogleResponseImplToJson(
        _$SignInWithGoogleResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };
