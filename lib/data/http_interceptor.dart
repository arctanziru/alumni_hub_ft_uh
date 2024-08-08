import 'dart:convert';
import 'package:alumni_hub_ft_uh/constants/keys.dart';
import 'package:alumni_hub_ft_uh/features/user/domain/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers['requiresToken']) {
      try {
        options.headers.remove('requiresToken');
        SharedPreferences prefs = await SharedPreferences.getInstance();
        final userSession =
            UserSession.fromJson(json.decode(prefs.getString(kUserSession)!));
        options.headers
            .addAll({'Authorization': 'Bearer ${userSession.token}'});
      } catch (e) {
        debugPrint("Error in adding token to request $e");
      }
    }
    return super.onRequest(options, handler);
  }
}
