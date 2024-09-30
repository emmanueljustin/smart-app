import 'package:get_it/get_it.dart';
import 'package:smartapp/global_core/hive_service/hive_methods.dart';
import 'package:smartapp/src/auth/data/data_sources/remote_auth_data_source_impl.dart';
import 'package:smartapp/src/auth/data/repositories/auth_repository_impl.dart';
import 'package:smartapp/src/auth/domain/repositories/auth_repository.dart';
import 'package:smartapp/src/auth/domain/usecases/user_login_usecase.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  _authModules();

  // Hive
  getIt.registerLazySingleton<HiveMethods>(() => HiveMethods());
}

void _authModules() {
  // Data Sources
  getIt.registerLazySingleton<RemoteAuthDataSourceImpl>(() => RemoteAuthDataSourceImpl());

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  // Usecases
  getIt.registerLazySingleton<UserLoginUsecase>(() => UserLoginUsecase(getIt()));
}
