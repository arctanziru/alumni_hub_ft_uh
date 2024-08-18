import 'package:alumni_hub_ft_uh/common/domain/common_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class Api {
  final Dio _dio;

  Api(
    this._dio,
  );

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
          response = await _dio.get(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.post:
          response = await _dio.post(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.put:
          response = await _dio.put(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.delete:
          response = await _dio.delete(endpoint, queryParameters: params, data: body);
          break;
        case NetworkCallMethod.patch:
          response = await _dio.patch(endpoint, queryParameters: params, data: body);
          break;
      }
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      } else {
        debugPrint("Error in response ${response.data}");
        throw CustomException("Terjadi kesalahan saat memuat data ${response.data?.message ?? ""}");
      }
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint("Error in response ${e.response?.data}");
        try {
          final errorResponse = ErrorResponse.fromJson(e.response?.data);
          throw CustomException(errorResponse.message);
        } catch (parseError) {
          throw CustomException(e.response?.statusMessage ?? 'Terjadi kesalahan saat memuat data');
        }
      } else {
        throw const CustomException('Terjadi kesalahan saat memuat data');
      }
    } on CustomException {
      rethrow;
    } catch (e) {
      throw const CustomException("Terjadi kesalahan saat memuat data");
    }
  }
}

enum NetworkCallMethod { get, post, put, patch, delete }
