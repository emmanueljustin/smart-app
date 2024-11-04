import 'package:smartapp/global_core/usecases/usecase_with_params.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/models/register_info_model.dart';

import '../repositories/auth_repository.dart';

class UserRegisterUsecase extends UseCaseWithParams<RegisterInfoModel, RegisterParams>{
  UserRegisterUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<(String?, RegisterInfoModel?)> call(RegisterParams params) {
    return _authRepository.register(params);
  }
}