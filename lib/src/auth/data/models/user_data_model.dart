import 'package:smartapp/src/auth/domain/entities/user_data.dart';

class UserDataModel extends UserData {
  const UserDataModel({
    super.id,
    super.username,
    super.email,
    super.firstName,
    super.lastName,
    super.age,
    super.gender,
    super.createdAt,
    super.updatedAt
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'] ?? 0,
      username: json['username'].toString(),
      email: json['email'].toString(),
      firstName: json['firstName'].toString(),
      lastName: json['lastName'].toString(),
      age: json['age'] ?? 0,
      gender: json['gender'].toString(),
      createdAt: json['createdAt'].toString(),
      updatedAt: json['updatedAt'].toString()
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'email': email,
    'firstName': firstName,
    'lastName': lastName,
    'age': age,
    'gender': gender,
    'createdAt': createdAt,
    'updatedAt': updatedAt
  };
}