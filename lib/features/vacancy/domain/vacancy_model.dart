import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy_model.freezed.dart';
part 'vacancy_model.g.dart';

@freezed
class VacancyModel with _$VacancyModel {
  const factory VacancyModel({
    required String id,
    required String title,
    required String description,
    required String location,
    required String salary,
    required String company,
    required String companyLogo,
    required String type,
    required String url,
    required int createdAt,
    required String backgroundUrl,
    required List<String> requirements,
    required String experience,
  }) = _VacancyModel;

  factory VacancyModel.fromJson(Map<String, dynamic> json) =>
      _$VacancyModelFromJson(json);
}
