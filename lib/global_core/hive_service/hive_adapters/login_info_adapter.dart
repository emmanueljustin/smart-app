import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartapp/src/auth/data/models/login_info_model.dart';

class LoginInfoAdapter extends TypeAdapter<LoginInfoModel> {
  
  @override
  final int typeId = 1;
  
  @override
  LoginInfoModel read(BinaryReader reader) {
    return LoginInfoModel(
      token: reader.read(),
      userData: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, LoginInfoModel obj) {
    writer.write(obj.token);
    writer.write(obj.userData);
  }
}