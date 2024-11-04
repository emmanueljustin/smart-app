part of 'register_bloc.dart';

enum RegisterStatus { initial, loading, success, failed }

class RegisterState extends Equatable {
  const RegisterState({
    this.status = RegisterStatus.initial,
    this.data = const RegisterInfoModel(),
    this.error = ''
  });

  final RegisterStatus status;
  final RegisterInfoModel data;
  final String error;

  RegisterState copyWith({
    RegisterStatus? status,
    RegisterInfoModel? data,
    String? error
  }) => RegisterState(
    status: status ?? this.status,
    data: data ?? this.data,
    error: error ?? this.error
  );
  
  @override
  List<Object> get props => [
    status,
    data,
    error
  ];
}
