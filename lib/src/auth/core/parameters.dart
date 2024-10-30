import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  const LoginParams({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  @override
  List<Object> get props => [
    username,
    password,
  ];
}

class RegisterParams extends Equatable {
  const RegisterParams({
    required this.username,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.gender
  });

  final String username;
  final String password;
  final String email;
  final String firstName;
  final String lastName;
  final int age;
  final String gender;

  @override
  List<Object> get props => [
    username,
    password,
    email,
    firstName,
    lastName,
    age,
    gender
  ];
}