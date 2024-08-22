import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_jurusan_model.freezed.dart';
part 'get_all_jurusan_model.g.dart';

@freezed
class GetAllJurusanResponse with _$GetAllJurusanResponse {
  const factory GetAllJurusanResponse({
    required String message,
    required List<String> data,
  }) = _GetAllJurusanResponse;

  factory GetAllJurusanResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllJurusanResponseFromJson(json);
}