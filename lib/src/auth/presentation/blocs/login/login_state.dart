part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failed }

class LoginState extends Equatable {
  const LoginState({
    this.status = LoginStatus.initial,
    this.loginInfo,
    this.error = '',
  });

  final LoginStatus status;
  final LoginInfoModel? loginInfo;
  final String error;

  LoginState copyWith({
    LoginStatus? status,
    LoginInfoModel? loginInfo,
    String? error,
  }) => LoginState(
    status: status ?? this.status,
    loginInfo: loginInfo ?? this.loginInfo,
    error: error ?? this.error,
  );
  
  @override
  List<Object?> get props => [
    status,
    loginInfo,
    error,
  ];
}
