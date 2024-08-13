// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_get_many_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyGetManyModelResponseImpl _$$VacancyGetManyModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VacancyGetManyModelResponseImpl(
      message: json['message'] as String,
      data: VacancyGetManyModelData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VacancyGetManyModelResponseImplToJson(
        _$VacancyGetManyModelResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$VacancyGetManyModelDataImpl _$$VacancyGetManyModelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VacancyGetManyModelDataImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => VacancyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$VacancyGetManyModelDataImplToJson(
        _$VacancyGetManyModelDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };
