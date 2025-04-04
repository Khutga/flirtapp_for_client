import 'package:shared_preferences/shared_preferences.dart';

class LoginLocal {
  static const _myBooleanKey = "myBooleanKey";

  setLoginValue(bool isLogin) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_myBooleanKey, isLogin);
  }

  getLoginValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(_myBooleanKey) ?? false;
    return value;
  }

  setLoginTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('lastLoginTime', DateTime.now().toString());
  }

  getLoginTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('lastLoginTime');
  }
}
