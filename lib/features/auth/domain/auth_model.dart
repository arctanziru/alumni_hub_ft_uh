import 'package:alumni_hub_ft_uh/features/user/domain/models/user_get_one.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required bool success,
    required String message,
    required SignUpResponseData data,
    required String token,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@freezed
class SignUpResponseData with _$SignUpResponseData {
  const factory SignUpResponseData({
    required String email,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'id_user') required int idUser,
  }) = _SignUpResponseData;

  factory SignUpResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDataFromJson(json);
}

@freezed
class SignUpBody with _$SignUpBody {
  const factory SignUpBody({
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation') required String confirmPassword,
  }) = _SignUpBody;

  factory SignUpBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpBodyFromJson(json);
}

// Example for other models, like SignInResponse:
@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required String token,
    required SignInResponseData data,
    required String message,
    required bool success,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

@freezed
class SignInResponseData with _$SignInResponseData {
  const factory SignInResponseData({
    required String email,
  }) = _SignInResponseData;

  factory SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataFromJson(json);
}

// Example of SignInBody
@freezed
class SignInBody with _$SignInBody {
  const factory SignInBody({
    required String email,
    required String password,
  }) = _SignInBody;

  factory SignInBody.fromJson(Map<String, dynamic> json) =>
      _$SignInBodyFromJson(json);
}

// New model for Google Sign-In response
@freezed
class SignInWithGoogleResponse with _$SignInWithGoogleResponse {
  const factory SignInWithGoogleResponse({
    required String token,
    required UserGetOneData data,
    required String message,
    required bool success,
  }) = _SignInWithGoogleResponse;

  factory SignInWithGoogleResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInWithGoogleResponseFromJson(json);
}
