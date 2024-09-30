import 'package:smartapp/src/auth/domain/entities/user_data.dart';

class UserDataModel extends UserData {
  const UserDataModel({
    super.id,
    super.email,
    super.username,
    super.mobileNumber,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'] ?? 0,
      email: json['email'] ?? '',
      username: json['username'] ?? '',
      mobileNumber: json['mobilenumber'] ?? ''
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'username': username,
    'mobilenumber': mobileNumber,
  };
}