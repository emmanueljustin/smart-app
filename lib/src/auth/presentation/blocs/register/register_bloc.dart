import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/models/register_info_model.dart';
import 'package:smartapp/src/auth/domain/usecases/user_register_usecase.dart';

import '../../../../../global_core/hive_service/hive_methods.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<CreateAccount>(_onCreateAccount);
  }

  final userRegister = GetIt.instance<UserRegisterUsecase>();
  final hiveService = GetIt.instance<HiveMethods>();

  FutureOr<void> _onCreateAccount(CreateAccount event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStatus.loading));

    final (error, data) = await userRegister(event.params);

    if (data != null) {
      hiveService.setJwtToken(data.jwt);
      emit(state.copyWith(status: RegisterStatus.success, data: data));
    }

    if (error != null) {
      emit(state.copyWith(status: RegisterStatus.failed, error: error));
    }
  }
}
