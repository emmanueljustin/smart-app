import 'package:smartapp/src/auth/domain/entities/register_info.dart';

class RegisterInfoModel extends RegisterInfo {
  const RegisterInfoModel({
    super.username,
    super.email,
    super.firstName,
    super.lastName,
    super.jwt
  });

  factory RegisterInfoModel.fromJson(Map<String, dynamic> json) {
    return RegisterInfoModel(
      username: json['username'].toString(),
      email: json['email'].toString(),
      firstName: json['firstName'].toString(),
      lastName: json['lastName'].toString(),
      jwt: json['jwt'].toString()
    );
  }

  Map<String, dynamic> toJson() => {
    'username': username,
    'email': email,
    'firstName': firstName,
    'lastName': lastName,
    'jwt': jwt
  };
}