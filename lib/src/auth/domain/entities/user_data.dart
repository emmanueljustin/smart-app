import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  const UserData({
    this.id = 0,
    this.email = '',
    this.username = '',
    this.mobileNumber = '',
  });

  final int id;
  final String email;
  final String username;
  final String mobileNumber;

  @override
  List<Object> get props => [
    id,
    email,
    username,
    mobileNumber,
  ];
}