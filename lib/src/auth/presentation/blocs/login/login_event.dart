part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class OnAuthStarted extends LoginEvent {
  const OnAuthStarted();

  @override
  List<Object> get props => [];
}

class OnLogin extends LoginEvent {
  const OnLogin(this.params);
  final LoginParams params;

  @override
  List<Object> get props => [
    params,
  ];
}

class CheckHive extends LoginEvent {
  const CheckHive();
  
  @override
  List<Object> get props => [];
}

class OnLogout extends LoginEvent {
  const OnLogout();

  @override
  List<Object> get props => [];
}