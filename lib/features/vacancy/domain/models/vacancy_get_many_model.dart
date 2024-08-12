import 'package:alumni_hub_ft_uh/common/domain/common_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vacancy_model.dart';

part 'vacancy_get_many_model.freezed.dart';
part 'vacancy_get_many_model.g.dart';

@freezed
class VacancyGetManyModelResponse with _$VacancyGetManyModelResponse {
  const factory VacancyGetManyModelResponse({
    required String message,
    required VacancyGetManyModelData data,
  }) = _VacancyGetManyModelResponse;

  factory VacancyGetManyModelResponse.fromJson(Map<String, dynamic> json) =>
      _$VacancyGetManyModelResponseFromJson(json);
}

@freezed
class VacancyGetManyModelData with _$VacancyGetManyModelData {
  const factory VacancyGetManyModelData({
    @JsonKey(name: 'current_page') required int currentPage,
    required List<VacancyModel> data,
    @JsonKey(name: 'first_page_url') required String firstPageUrl,
    required int? from,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'last_page_url') required String lastPageUrl,
    required List<LinkModel> links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    required String path,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int? to,
    required int total,
  }) = _VacancyGetManyModelData;

  factory VacancyGetManyModelData.fromJson(Map<String, dynamic> json) =>
      _$VacancyGetManyModelDataFromJson(json);
}

class VacancyGetManyParams extends GetManyParams {
  final int? idLowongan;

  VacancyGetManyParams({
    super.page,
    super.limit,
    super.search,
    this.idLowongan,
  });

  Map<String, dynamic> toJson() {
    return {
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (search != null) 'search': search,
      if (idLowongan != null) 'id_lowongan': idLowongan,
    };
  }
}