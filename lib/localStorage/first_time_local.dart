import 'package:shared_preferences/shared_preferences.dart';

class FirstTimeLocal {
  static const _myBooleanKey = "myBooleanKey";

  setFirstTime(bool firstTime) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_myBooleanKey, firstTime);
  }

  getFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(_myBooleanKey) ?? false;
    return value;
  }
}
