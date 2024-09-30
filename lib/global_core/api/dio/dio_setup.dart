import 'package:dio/dio.dart';

import 'dio_interceptors.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  final Dio _dio;

  factory ApiClient() {
    return _instance;
  }

  ApiClient._internal() : _dio = Dio() {
    _dio.interceptors.add(HeaderInterceptor());
  }
  
  Dio get dio => _dio;
}