import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartapp/src/auth/data/models/user_data_model.dart';

class UserDataAdapter extends TypeAdapter<UserDataModel> {

  @override
  final int typeId = 0;

  @override
  UserDataModel read(BinaryReader reader) {
    return UserDataModel(
      id: reader.read(),
      username: reader.read(),
      email: reader.read(),
      firstName: reader.read(),
      lastName: reader.read(),
      age: reader.read(),
      gender: reader.read(),
      createdAt: reader.read(),
      updatedAt: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, UserDataModel obj) {
    writer.write(obj.id);
    writer.write(obj.username);
    writer.write(obj.email);
    writer.write(obj.firstName);
    writer.write(obj.lastName);
    writer.write(obj.age);
    writer.write(obj.gender);
    writer.write(obj.createdAt);
    writer.write(obj.updatedAt);
  }
}
