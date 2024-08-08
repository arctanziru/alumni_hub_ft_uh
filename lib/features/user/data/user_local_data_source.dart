import 'dart:convert';

import 'package:alumni_hub_ft_uh/constants/keys.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class UserLocalDataSource {
  final SharedPreferences _sharedPreferences;

  const UserLocalDataSource(this._sharedPreferences);

  Future<bool> saveUserSession(UserSession userSession) {
    debugPrint("USER BLOC : user session $userSession ");
    return _sharedPreferences.setString(
        kUserSession, json.encode(userSession.toJson()));
  }

  UserSession? getUserSession() {
    final data = _sharedPreferences.getString(kUserSession);
    if (data != null) return UserSession.fromJson(json.decode(data));
    return null;
  }

  Future<bool> deleteUserSession() {
    return _sharedPreferences.remove(kUserSession);
  }
}
