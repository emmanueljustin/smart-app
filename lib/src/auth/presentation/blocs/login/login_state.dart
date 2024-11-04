part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failed }

class LoginState extends Equatable {
  const LoginState({
    this.status = LoginStatus.initial,
    this.token = '',
    this.error = '',
  });

  final LoginStatus status;
  final String token;
  final String error;

  LoginState copyWith({
    LoginStatus? status,
    String? token,
    String? error,
  }) => LoginState(
    status: status ?? this.status,
    token: token ?? this.token,
    error: error ?? this.error,
  );
  
  @override
  List<Object?> get props => [
    status,
    token,
    error,
  ];
}
