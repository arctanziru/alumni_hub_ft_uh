import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    required String message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

class GetManyParams {
  final int? page;
  final int? limit;
  final String? search;

  GetManyParams({this.page, this.limit, this.search});
}

@freezed
class LinkModel with _$LinkModel {
  const factory LinkModel({
    String? url,
    required String label,
    required bool active,
  }) = _LinkModel;

  factory LinkModel.fromJson(Map<String, dynamic> json) =>
      _$LinkModelFromJson(json);
}
