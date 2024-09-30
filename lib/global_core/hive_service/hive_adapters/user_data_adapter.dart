import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartapp/src/auth/data/models/user_data_model.dart';

class UserDataAdapter extends TypeAdapter<UserDataModel> {

  @override
  final int typeId = 0;

  @override
  UserDataModel read(BinaryReader reader) {
    return UserDataModel(
      id: reader.read(),
      email: reader.read(),
      username: reader.read(),
      mobileNumber: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, UserDataModel obj) {
    writer.write(obj.id);
    writer.write(obj.email);
    writer.write(obj.username);
    writer.write(obj.mobileNumber);
  }
}
