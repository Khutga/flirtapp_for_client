import 'package:shared_preferences/shared_preferences.dart';

class ThemeLocal {
  static const _themeKey = "themeKey";

  setThemeValue(bool theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, theme);
  }

  Future<bool> getThemeValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(_themeKey) ?? false;
    return value;
  }
}
