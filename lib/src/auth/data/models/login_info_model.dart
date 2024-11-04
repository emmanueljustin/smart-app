import 'package:smartapp/src/auth/data/models/user_data_model.dart';
import 'package:smartapp/src/auth/domain/entities/login_info.dart';

class LoginInfoModel extends LoginInfo {
  const LoginInfoModel({
    super.token,
    super.userData,
  });

  factory LoginInfoModel.fromJson(Map<String, dynamic> json) {
    return LoginInfoModel(
      token: json['token'] ?? '',
      userData: UserDataModel.fromJson(json['userData']),
    );
  }

  Map<String, dynamic> toJson() => {
    'token': token,
    'userData': userData,
  };
}