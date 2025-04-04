import 'package:flutter/material.dart';
import '../screens/index.dart' as screens;
Map<String, Widget Function(BuildContext)> routes = {
  // 'welcome_screen': (context) => const Welcome(),
  'welcome_screen': (context) => const screens.WelcomeScreen(),
  'chat_screen': (context) => const screens.ChatScreen(),
  'conversation_screen': (context) => const screens.ConversationScreen(),
  'profile_screen': (context) => const screens.Profile(),
  'settings_screen': (context) => const screens.SettingsScreen(),
  'wrong_answer_screen': (context) => const screens.WrongAnswerScreen(),

};
