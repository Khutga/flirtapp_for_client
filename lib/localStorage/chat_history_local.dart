import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class ChatHistoryLocal {
  Future<void> setChatHistoryValue(List<Map<String, dynamic>> data, int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonData = jsonEncode(data); // Convert the list of maps to a JSON string
    await prefs.setString('conversation-$id', jsonData);
  }

  Future<List<Map<String, dynamic>>> getChatHistoryValue(int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonData = prefs.getString('conversation-$id');
    if (jsonData != null) {
      // Parse the JSON string back to a list of maps
      List<dynamic> parsedData = jsonDecode(jsonData);
      List<Map<String, dynamic>> chatHistory = List<Map<String, dynamic>>.from(parsedData);
      return chatHistory;
    } else {
      // Handle the case when the data is not found
      return [];
    }
  }
}
