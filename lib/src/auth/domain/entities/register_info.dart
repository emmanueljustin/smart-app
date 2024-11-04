import 'package:equatable/equatable.dart';

class RegisterInfo extends Equatable {
  const RegisterInfo({
    this.username = '',
    this.email = '',
    this.firstName = '',
    this.lastName = '',
    this.jwt = ''
  });

  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String jwt;

  @override
  List<Object> get props => [
    username,
    email,
    firstName,
    lastName,
    jwt
  ];
}