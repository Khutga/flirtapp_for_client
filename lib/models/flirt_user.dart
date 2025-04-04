import 'package:flirt_coach/models/index.dart';

class FlirtUser {
  late String id;
  late String firstName;
  late String lastName;
  late String gender;
  late String language;
  late int age;
  late String? profilePic;
  late List<Conversation> conversations;

  FlirtUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.language,
    required this.age,
    this.profilePic,
    required this.conversations,
  });
}
