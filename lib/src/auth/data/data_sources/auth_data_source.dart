import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/models/login_info_model.dart';

abstract class AuthDataSource {
  Future<LoginInfoModel> login(LoginParams params);
}