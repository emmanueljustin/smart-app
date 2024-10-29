import 'package:smartapp/src/auth/core/parameters.dart';

abstract class AuthDataSource {
  Future<String> login(LoginParams params);
}