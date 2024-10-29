import 'package:smartapp/global_core/hive_service/hive_boxes.dart';
import 'package:smartapp/src/auth/data/models/login_info_model.dart';

class HiveMethods {
  final HiveBoxes _hiveBoxes = HiveBoxes();

  Future<void> setLoginInfo(LoginInfoModel? data) async {
    await _hiveBoxes.userBox.put('user_info', data);
  }

  LoginInfoModel? getLoginInfo() {
    return _hiveBoxes.userBox.get('user_info');
  }

  Future<void> setJwtToken(String? data) async {
    await _hiveBoxes.userBox.put('token', data);
  }

  String? getJwtToken() {
    return _hiveBoxes.userBox.get('token');
  }

  void clearBoxes() {
    _hiveBoxes.userBox.clear();
  }
}