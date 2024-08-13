// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_get_many_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsGetManyModelResponseImpl _$$NewsGetManyModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsGetManyModelResponseImpl(
      message: json['message'] as String,
      data: NewsGetManyModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsGetManyModelResponseImplToJson(
        _$NewsGetManyModelResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$NewsGetManyModelDataImpl _$$NewsGetManyModelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsGetManyModelDataImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$NewsGetManyModelDataImplToJson(
        _$NewsGetManyModelDataImpl instance) =>
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

_$NewsCategoryGetManyModelResponseImpl
    _$$NewsCategoryGetManyModelResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$NewsCategoryGetManyModelResponseImpl(
          message: json['message'] as String,
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => NewsCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$NewsCategoryGetManyModelResponseImplToJson(
        _$NewsCategoryGetManyModelResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
