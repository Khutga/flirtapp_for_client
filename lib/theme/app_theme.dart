import 'package:flirt_coach/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
      color: AppColors.lightPrimary,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lightPrimary,
    ),
  );

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
      color: Colors.deepPurple,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
  );

  // static FluentThemeData get lightTheme => FluentThemeData(
  //       brightness: Brightness.light,
  //       // primaryColor: const Color(0xFF0000FF), // Replace with your desired primary color
  //       // accentColor: Color(0xFFFF0000)
  //       //     .toAccentColor(), // Replace with your desired accent color
  //       scaffoldBackgroundColor: Colors.white,
  //       // Add more light theme configurations as needed
  //     );

  // static FluentThemeData get darkTheme => FluentThemeData(
  //       brightness: Brightness.dark,
  //       // primaryColor: const Color(0xFF000000), // Replace with your desired primary color
  //       // accentColor: const Color(0xFFFFFFFF)
  //       //     .toAccentColor(), // Replace with your desired accent color
  //       // scaffoldBackgroundColor: Colors.grey[900],
  //       // Add more dark theme configurations as needed
  //     );
}
