import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel(
      {@JsonKey(name: 'id_berita') required int idBerita,
      @JsonKey(name: 'id_kategori_berita') required int? idKategoriBerita,
      required NewsCategoryModel? kategori,
      required String judul,
      required String penulis,
      required String slug,
      required String gambar,
      required String konten,
      @JsonKey(name: 'is_liked') required bool isLiked,
      @JsonKey(name: 'total_like') required int totalLike,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      required}) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class NewsCategoryModel with _$NewsCategoryModel {
  const factory NewsCategoryModel({
    @JsonKey(name: 'id_kategori_berita') required int idKategoriBerita,
    required String kategori,
    required String slug,
  }) = _NewsCategoryModel;

  factory NewsCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$NewsCategoryModelFromJson(json);
}
