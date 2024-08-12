import "package:alumni_hub_ft_uh/features/user/domain/models/user_get_one.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required String nim,
    required String name,
    required String department,
    required String batch,
    required String graduationYear,
    required String phoneNumber,
    String? photoUrl,
    required String address,
    required String longitudes,
    required String latitudes,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

class UserParams {
  final int page;
  final int size;
  final String searchBy;
  String? searchValue;

  UserParams(
      {this.page = 1,
      this.size = 10,
      this.searchBy = 'name',
      this.searchValue});

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'size': size,
      'searchBy': searchBy,
      'searchValue': searchValue
    };
  }
}

class UserSession {
  final String? token;
  final UserGetOneData? user;

  UserSession({required this.token, required this.user});

  factory UserSession.fromJson(Map<String, dynamic> json) => UserSession(
      token: json['token'],
      user:
          json['user'] == null ? null : UserGetOneData.fromJson(json['user']));

  Map<String, dynamic> toJson() {
    return {'token': token, 'user': user?.toJson()};
  }
}
