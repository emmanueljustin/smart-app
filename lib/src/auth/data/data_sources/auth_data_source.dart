import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/models/register_info_model.dart';

abstract class AuthDataSource {
  Future<String> login(LoginParams params);
  Future<RegisterInfoModel> register(RegisterParams params);
}