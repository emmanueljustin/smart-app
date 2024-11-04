part of 'register_bloc.dart';

class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class CreateAccount extends RegisterEvent {
  const CreateAccount(this.params);
  final RegisterParams params;

  @override
  List<Object> get props => [params];
}
