import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class Api {
  final Dio _dio;

  Api(this._dio);

  Future<Response> createApiCall({
    required String endpoint,
    required NetworkCallMethod method,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
  }) async {
    try {
      late Response response;
      switch (method) {
        case NetworkCallMethod.get:
          response = await _dio.get(endpoint, queryParameters: params);
          break;
        case NetworkCallMethod.post:
          response =
              await _dio.post(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.put:
          response =
              await _dio.put(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.delete:
          response =
              await _dio.delete(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.patch:
          response =
              await _dio.patch(endpoint, queryParameters: params, data: body);
          break;
      }
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      } else {
        debugPrint("Error in response ${response.data}");
        throw CustomException(
            "Terjadi kesalahan saat memuat data ${response.data?.message ?? ""}");
      }
      // } on DioException catch (e) {
      //   debugPrint('anjing lu error $e');
      //   final response = e.response?.data;
      //   String? message = response['message'];
      //   String? reason = response['reason'];
      //   final err =
      //       "$message ${message?.toLowerCase() == reason?.toLowerCase() ? "" : ", $reason"}";
      //   throw CustomException(err);
    } catch (e) {
      throw CustomException("Terjadi kesalahan saat memuat data, $e");
    }
  }
}

enum NetworkCallMethod { get, post, put, patch, delete }
