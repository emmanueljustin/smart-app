import 'package:smartapp/global_core/api/api_routes.dart';
import 'package:smartapp/global_core/api/dio/dio_setup.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/data_sources/auth_data_source.dart';
import 'package:smartapp/src/auth/data/models/register_info_model.dart';

class RemoteAuthDataSourceImpl extends AuthDataSource {
  final ApiClient _client = ApiClient();
  final ApiRoutes _apiRoutes = ApiRoutes();

  @override
  Future<String> login(LoginParams params) async {
    final response = await _client.dio.post(_apiRoutes.userLogin, 
      data: {
        'username': params.username,
        'password': params.password,
      },
    );

    if (response.statusCode == 200) {
      if (response.data['status'] == 'err') {
        throw Exception(response.data['message']);
      }
      return response.data['data'].toString();
    } else {
      throw Exception('Err: status code not ok.');
    }
  }

  @override
  Future<RegisterInfoModel> register(RegisterParams params) async {
    final response = await _client.dio.post(_apiRoutes.userRegister,
      data: {
        'username': params.username,
        'password': params.password,
        'email': params.email,
        'firstName': params.firstName,
        'lastName': params.lastName,
        'age': params.age,
        'gender': params.gender
      }
    );

    if (response.statusCode == 200) {
      if (response.data['status'] == 'err') {
        throw Exception(response.data['message']);
      }
      return RegisterInfoModel.fromJson(response.data['data']);
    } else {
      throw Exception('Err: status code not ok.');
    }
  }
}