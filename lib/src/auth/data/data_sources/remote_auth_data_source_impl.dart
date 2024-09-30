import 'package:smartapp/global_core/api/api_routes.dart';
import 'package:smartapp/global_core/api/dio/dio_setup.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/data_sources/auth_data_source.dart';
import 'package:smartapp/src/auth/data/models/login_info_model.dart';

class RemoteAuthDataSourceImpl extends AuthDataSource {
  // final ApiClient _dio = ApiClient();
  final ApiRoutes _apiRoutes = ApiRoutes();

  @override
  Future<LoginInfoModel> login(LoginParams params) async {
    final response = await ApiClient().dio.post(_apiRoutes.userLogin, 
      data: {
        'email': params.email,
        'password': params.password,
      }
    );

    if (response.statusCode == 200) {
      if (response.data['status'] == 'err') {
        throw Exception(response.data['message']);
      }
      return LoginInfoModel.fromJson(response.data['data']);
    } else {
      throw Exception('Err: status code not ok.');
    }
  }
}