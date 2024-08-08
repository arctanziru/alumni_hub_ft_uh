// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String,
      nim: json['nim'] as String,
      name: json['name'] as String,
      department: json['department'] as String,
      batch: json['batch'] as String,
      graduationYear: json['graduationYear'] as String,
      phoneNumber: json['phoneNumber'] as String,
      photoUrl: json['photoUrl'] as String?,
      address: json['address'] as String,
      longitudes: json['longitudes'] as String,
      latitudes: json['latitudes'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nim': instance.nim,
      'name': instance.name,
      'department': instance.department,
      'batch': instance.batch,
      'graduationYear': instance.graduationYear,
      'phoneNumber': instance.phoneNumber,
      'photoUrl': instance.photoUrl,
      'address': instance.address,
      'longitudes': instance.longitudes,
      'latitudes': instance.latitudes,
    };
