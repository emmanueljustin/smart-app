import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/data_sources/remote_auth_data_source_impl.dart';
import 'package:smartapp/src/auth/data/models/register_info_model.dart';

abstract class AuthRepository {
  const AuthRepository(this.remoteAuthDataSrc);

  final RemoteAuthDataSourceImpl remoteAuthDataSrc;

  Future<(String?, String?)> login(LoginParams params);
  Future<(String?, RegisterInfoModel?)> register(RegisterParams params);
}