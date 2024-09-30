import 'package:hive/hive.dart';

import 'hive_adapters/login_info_adapter.dart';
import 'hive_adapters/user_data_adapter.dart';

class HiveBoxes {
  Box? _userBox;

  Box get userBox => _userBox ?? Hive.box('login_info');

  Future<void> registerAdapters() async {
    Hive.registerAdapter(UserDataAdapter());
    Hive.registerAdapter(LoginInfoAdapter());

    await openBoxes();
  }

  Future<void> openBoxes() async {
    _userBox = await Hive.openBox('login_info');
  }
}