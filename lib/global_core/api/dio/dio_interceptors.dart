import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../hive_service/hive_methods.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  final hiveService = GetIt.instance<HiveMethods>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final data = hiveService.getLoginInfo();
    if (data != null) {
      options.headers['Authorization'] = data.token;
    }
    options.headers['Accept'] = 'application/json';

    super.onRequest(options, handler);
  }
}