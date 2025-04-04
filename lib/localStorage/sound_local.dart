import 'package:shared_preferences/shared_preferences.dart';

class SoundLocal {
  static const _soundKey = "soundKey";

  setSoundValue(bool sound) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_soundKey, sound);
  }

  Future<bool> getSoundValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(_soundKey) ?? false;
    return value;
  }
}
