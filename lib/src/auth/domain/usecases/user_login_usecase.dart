import 'package:smartapp/global_core/usecases/usecase_with_params.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/domain/repositories/auth_repository.dart';

class UserLoginUsecase extends UseCaseWithParams<String, LoginParams>{
  UserLoginUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<(String?, String?)> call(LoginParams params) {
    return _authRepository.login(params);
  }
}