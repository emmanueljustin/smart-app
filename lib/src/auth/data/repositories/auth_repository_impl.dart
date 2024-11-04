import 'package:dio/dio.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/models/register_info_model.dart';
import 'package:smartapp/src/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  const AuthRepositoryImpl(super.remoteAuthDataSrc);

  @override
  Future<(String?, String?)> login(LoginParams params) async {
    try {
      final data = await remoteAuthDataSrc.login(params);
      return (null, data);
    } on DioException catch (dio) {
      return (dio.message, null);
    } catch (e) {
      return ("Oops! Server has encountered an issue.", null);
    }
  }

  @override
  Future<(String?, RegisterInfoModel?)> register(RegisterParams params) async {
    try {
      final data = await remoteAuthDataSrc.register(params);
      return (null, data);
    } on DioException catch (dio) {
      return (dio.message, null);
    } catch (e) {
      return ("Oops! Server has encountered an issue.", null);
    }
  }
  
}