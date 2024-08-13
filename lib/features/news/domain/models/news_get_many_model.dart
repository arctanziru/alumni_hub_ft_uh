import 'package:alumni_hub_ft_uh/common/domain/common_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'news_model.dart';

part 'news_get_many_model.freezed.dart';
part 'news_get_many_model.g.dart';

@freezed
class NewsGetManyModelResponse with _$NewsGetManyModelResponse {
  const factory NewsGetManyModelResponse({
    required String message,
    required NewsGetManyModelData data,
  }) = _NewsGetManyModelResponse;

  factory NewsGetManyModelResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsGetManyModelResponseFromJson(json);
}

@freezed
class NewsGetManyModelData with _$NewsGetManyModelData {
  const factory NewsGetManyModelData({
    @JsonKey(name: 'current_page') required int currentPage,
    required List<NewsModel> data,
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
  }) = _NewsGetManyModelData;

  factory NewsGetManyModelData.fromJson(Map<String, dynamic> json) =>
      _$NewsGetManyModelDataFromJson(json);
}

class NewsGetManyParams extends GetManyParams {
  final int? idKategoriBerita;

  NewsGetManyParams({
    super.page,
    super.limit,
    super.search,
    this.idKategoriBerita,
  });

  Map<String, dynamic> toJson() {
    return {
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (search != null) 'search': search,
      if (idKategoriBerita != null) 'id_kategori_berita': idKategoriBerita,
    };
  }
}

@freezed
class NewsCategoryGetManyModelResponse with _$NewsCategoryGetManyModelResponse {
  const factory NewsCategoryGetManyModelResponse({
    required String message,
    required List<NewsCategoryModel>? data,
  }) = _NewsCategoryGetManyModelResponse;

  factory NewsCategoryGetManyModelResponse.fromJson(
          Map<String, dynamic> json) =>
      _$NewsCategoryGetManyModelResponseFromJson(json);
}

class NewsCategoryGetManyParams extends GetManyParams {
  NewsCategoryGetManyParams({
    super.page,
    super.limit,
    super.search,
  });

  Map<String, dynamic> toJson() {
    return {
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (search != null) 'search': search,
    };
  }
}
