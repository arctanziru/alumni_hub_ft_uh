import 'package:alumni_hub_ft_uh/features/news/domain/models/news_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_get_one_model.freezed.dart';
part 'news_get_one_model.g.dart';

@freezed
class NewsGetOneModelResponse with _$NewsGetOneModelResponse {
  const factory NewsGetOneModelResponse({
    required String message,
    required NewsModel data,
  }) = _NewsGetOneModelResponse;

  factory NewsGetOneModelResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsGetOneModelResponseFromJson(json);
}
