import 'package:alumni_hub_ft_uh/data/http_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final baseOption = BaseOptions(
    baseUrl: dotenv.env['API_URL']!,
    responseType: ResponseType.json,
    headers: {
      'requiresToken': true,
      'accept': "application/json",
    });

Dio dioConfig() => Dio(baseOption)
  ..interceptors.add(HttpInterceptor())
  ..interceptors.add(PrettyDioLogger(requestBody: true));
