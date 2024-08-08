import 'package:alumni_hub_ft_uh/data/http_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final baseOption = BaseOptions(
    baseUrl: 'https://alumni-hub-ft-uh.herokuapp.com/api',
    responseType: ResponseType.json,
    headers: {
      'requiresToken': true,
      'accept': "application/json",
    });

Dio dioConfig() => Dio(baseOption)
  ..interceptors.add(HttpInterceptor())
  ..interceptors.add(PrettyDioLogger(requestBody: true));
