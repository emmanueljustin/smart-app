import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:smartapp/global_core/hive_service/hive_methods.dart';
import 'package:smartapp/src/auth/core/parameters.dart';
import 'package:smartapp/src/auth/data/models/login_info_model.dart';
import 'package:smartapp/src/auth/domain/usecases/user_login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<OnAuthStarted>(_onAuthStarted);
    on<OnLogin>(_onLogin);
  }

  final userLogin = GetIt.instance<UserLoginUsecase>();
  final hiveService = GetIt.instance<HiveMethods>();

  // Will be used for checking if there is an active user or not for page redirection.
  FutureOr<void> _onAuthStarted(OnAuthStarted event, Emitter<LoginState> emit) async {
    final userInfo= hiveService.getLoginInfo();

    if (userInfo != null) {
      emit(state.copyWith(status: LoginStatus.success, loginInfo: userInfo));
    } else {
      emit(state.copyWith(status: LoginStatus.initial));
    }
  }

  FutureOr<void> _onLogin(OnLogin event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.loading));

    final (error, data) = await userLogin(event.params);

    if (data != null) {
      hiveService.setLoginInfo(data);
      emit(state.copyWith(status: LoginStatus.success, loginInfo: data));
    }

    if (error != null) {
      emit(state.copyWith(status: LoginStatus.failed, error: error));
    }
  }
}
