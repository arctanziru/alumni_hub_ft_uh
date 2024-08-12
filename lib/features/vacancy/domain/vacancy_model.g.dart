// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyModelImpl _$$VacancyModelImplFromJson(Map<String, dynamic> json) =>
    _$VacancyModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      salary: json['salary'] as String,
      company: json['company'] as String,
      companyLogo: json['companyLogo'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
      backgroundUrl: json['backgroundUrl'] as String,
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      experience: json['experience'] as String,
    );

Map<String, dynamic> _$$VacancyModelImplToJson(_$VacancyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'salary': instance.salary,
      'company': instance.company,
      'companyLogo': instance.companyLogo,
      'type': instance.type,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'backgroundUrl': instance.backgroundUrl,
      'requirements': instance.requirements,
      'experience': instance.experience,
    };
