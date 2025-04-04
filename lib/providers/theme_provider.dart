import 'package:flutter/material.dart';

import '../localStorage/theme_local.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  // Constructor that initializes the isDarkMode property
  ThemeProvider() {
    _initializeTheme();
  }

  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }

  Future<void> _initializeTheme() async {
    // Use the getThemeValue method from ThemeLocal to initialize isDarkMode
    bool themeValue = await ThemeLocal().getThemeValue();
    isDarkMode = themeValue;
  }
}
