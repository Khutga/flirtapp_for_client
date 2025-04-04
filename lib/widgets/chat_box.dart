import 'package:flirt_coach/models/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index.dart';

/* class ChatBox extends StatefulWidget {
  /*final FlirtUser flirtUser;
  final bool darkMode;*/

  const ChatBox({super.key, required this.data, required this.darkMode});

  final Conversation data;
  final bool darkMode;

  @override
  State<ChatBox> createState() => _ChatBoxState();
} */

class ChatBox extends StatelessWidget {
  const ChatBox({super.key, required this.data, required this.darkMode});

  final Conversation data;
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'chat_screen', arguments: {
        'profilePic': data.profilePic,
        'firstName': data.fullName.split(' ')[0],
        'conversationId': data.id,
        'messages': data.messages.map((e) => e.toJson()).toList(),
      }),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: darkMode ? Colors.deepPurple : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade400,
            // child: Text('Chat212'),
            child: data.profilePic != null
                ? ClipOval(
                    child: Image.asset(
                      data.profilePic!,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Icon(Icons.person_2_sharp,
                    color: Colors.white, size: 30),
          ),
          title: Text(data.fullName),
          // subtitle: const Text('Hello, how are you?'),
          // trailing: const Text('12:00'),
        ),
      ),
    );
  }
}
