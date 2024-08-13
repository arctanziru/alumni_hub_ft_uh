import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_get_one.freezed.dart';
part 'user_get_one.g.dart';

@freezed
class UserGetOneResponse with _$UserGetOneResponse {
  const factory UserGetOneResponse({
    required String message,
    required UserGetOneData data,
  }) = _UserGetOneResponse;

  factory UserGetOneResponse.fromJson(Map<String, dynamic> json) =>
      _$UserGetOneResponseFromJson(json);
}

@freezed
class UserGetOneData with _$UserGetOneData {
  const factory UserGetOneData({
    @JsonKey(name: 'id_user') required int idUser,
    required String email,
    String? avatar,
    @JsonKey(name: 'last_active') String? lastActive,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required AlumniModel? alumni,
  }) = _UserGetOneData;

  factory UserGetOneData.fromJson(Map<String, dynamic> json) =>
      _$UserGetOneDataFromJson(json);
}
