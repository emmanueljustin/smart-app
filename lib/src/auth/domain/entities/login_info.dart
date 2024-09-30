import 'package:equatable/equatable.dart';
import 'package:smartapp/src/auth/data/models/user_data_model.dart';

class LoginInfo extends Equatable {
  const LoginInfo({
    this.token = '',
    this.userData = const UserDataModel(),
  });

  final String token;
  final UserDataModel userData;

  @override
  List<Object> get props => [
    token,
    userData,
  ];
}