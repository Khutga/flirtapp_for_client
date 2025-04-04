import 'package:shared_preferences/shared_preferences.dart';

class UserLocal {
  static const _userKey = "userKey";

  setUserValue(String user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, user);
  }

  getUserValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String value = prefs.getString(_userKey) ?? '';
    return value;
  }
}
