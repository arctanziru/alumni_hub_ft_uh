// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$SignUpResponseImpl _$$SignUpResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignUpResponseImpl(
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpResponseImplToJson(
        _$SignUpResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

_$SignUpBodyImpl _$$SignUpBodyImplFromJson(Map<String, dynamic> json) =>
    _$SignUpBodyImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      department: json['department'] as String,
      batch: json['batch'] as String,
      graduationYear: json['graduationYear'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: json['address'] as String,
      longitudes: json['longitudes'] as String?,
      latitudes: json['latitudes'] as String?,
    );

Map<String, dynamic> _$$SignUpBodyImplToJson(_$SignUpBodyImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'department': instance.department,
      'batch': instance.batch,
      'graduationYear': instance.graduationYear,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'longitudes': instance.longitudes,
      'latitudes': instance.latitudes,
    };
