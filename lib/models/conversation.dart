import 'package:flirt_coach/models/index.dart';

class Conversation {
  int id;
  String userName;
  String fullName;
  String gender;
  int age;
  String profilePic;
  bool isPremium;
  List<Message> messages;
   

  Conversation({
    required this.id,
    required this.userName,
    required this.fullName,
    required this.gender,
    required this.age,
    required this.profilePic,
    required this.isPremium,
    required this.messages,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) {
    // Convert the list of maps to a list of Message objects
    List<dynamic> messageList = json['messages'];
    List<Message> messages = messageList.map((message) => Message.fromJson(message)).toList();

    return Conversation(
      id: json['id'] as int,
      userName: json['userName'] as String,
      fullName: json['fullName'] as String,
      gender: json['gender'] as String,
      age: json['age'] as int,
      profilePic: json['profilePic'] as String,
      isPremium: json['isPremium'] as bool,
      messages: messages,
    );
  }

  // Convert Conversation to a Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'fullName': fullName,
      'gender': gender,
      'age': age,
      'profilePic': profilePic,
      'isPremium': isPremium,
      'messages': messages.map((message) => message.toJson()).toList(),
    };
  }
}
