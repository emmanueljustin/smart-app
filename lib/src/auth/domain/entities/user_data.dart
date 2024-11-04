import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  const UserData({
    this.id = 0,
    this.username = '',
    this.email = '',
    this.firstName = '',
    this.lastName = '',
    this.age = 0,
    this.gender = '',
    this.createdAt = '',
    this.updatedAt = ''
  });

  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final int age;
  final String gender;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object> get props => [
    id,
    username,
    email,
    firstName,
    lastName,
    age,
    gender,
    createdAt,
    updatedAt
  ];
}