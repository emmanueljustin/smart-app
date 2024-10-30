import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../hive_service/hive_methods.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  final hiveService = GetIt.instance<HiveMethods>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = hiveService.getJwtToken();
    if (token != null) {
      options.headers['Authorization'] = token;
    }
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    
    var logger = Logger(
      filter: null,
      output: null,
      printer: PrettyPrinter(
        printEmojis: false,
        methodCount: 0,
      )
    );
    
    logger.d(
      "Uri: ${options.path}\nParams: ${options.data}"
    );

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(response.data.toString());
    log(response.realUri.toString());

    return handler.next(response);
  }
}