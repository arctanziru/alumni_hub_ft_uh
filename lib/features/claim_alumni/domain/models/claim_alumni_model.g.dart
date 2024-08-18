// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_alumni_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClaimAlumniResponseImpl _$$ClaimAlumniResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClaimAlumniResponseImpl(
      message: json['message'] as String,
      data: AlumniModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimAlumniResponseImplToJson(
        _$ClaimAlumniResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$ClaimAlumniResponseDataImpl _$$ClaimAlumniResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ClaimAlumniResponseDataImpl(
      data: AlumniModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimAlumniResponseDataImplToJson(
        _$ClaimAlumniResponseDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ClaimAlumniBodyImpl _$$ClaimAlumniBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$ClaimAlumniBodyImpl(
      idAlumni: (json['idAlumni'] as num).toInt(),
    );

Map<String, dynamic> _$$ClaimAlumniBodyImplToJson(
        _$ClaimAlumniBodyImpl instance) =>
    <String, dynamic>{
      'idAlumni': instance.idAlumni,
    };
