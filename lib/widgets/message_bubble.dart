import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index.dart';
import '../theme/app_colors.dart';
import 'index.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MessageBubble extends StatefulWidget {
  const MessageBubble({
    super.key,
    this.loading = false,
    required this.data,
    required this.onPressOption,
    required this.profilePic,
    required this.getNextMessage,
    required this.isLastMessage,
  });

  final bool loading;
  final Map<String, dynamic> data;
  final Function onPressOption;
  final String profilePic;
  final Function getNextMessage;
  final bool isLastMessage;

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  void initState() {
    super.initState();

    // Check if options are empty
    if (widget.data["options"] != null && widget.data["options"].isEmpty) {
      // Use a Future to execute the getNextMessage asynchronously
      Future.microtask(() {
        if (mounted) {
          widget.getNextMessage();
        }
      });
    }
  }

  Widget getDescription() {
    return GestureDetector(
      onTap: () {
        showAlertDialog(
          widget.data["message"],
          widget.data["description"],
          widget.data["status"],
        );
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 8),
          const Text('See Details'),
        ],
      ),
    );
  }

  void showAlertDialog(String message, String description, bool status) {
    Navigator.pushNamed(context, 'wrong_answer_screen', arguments: {
      'message': message,
      'description': description,
      'status': status,
    });
  }

  Widget getAvatar() {
    if(widget.data['role'] == 'user'){
      return const CircleAvatar(
        child: Icon(
          Icons.person_2_sharp,
          color: Colors.white,
          size: 30,
        ),
      );
    } else {
      return CircleAvatar(backgroundImage: AssetImage(widget.profilePic));
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('widget.loading: ${widget.loading}');
    // widget.scrollToBottom();
    final isUser = widget.data['role'] == 'user';
    final mainAxisAlignment = isUser ? MainAxisAlignment.end : MainAxisAlignment.start;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        final darkMode = themeProvider.isDarkMode;
        // print('TİME PROP ' + widget.data.toString());

        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: widget.data.containsKey('status') ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                mainAxisAlignment: mainAxisAlignment,
                children: [
                  if (!isUser) getAvatar(),
                  if(widget.data.containsKey('status')) getDescription(),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: widget.loading ? 50 : 150,
                        height: widget.loading ? 40 : null,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: widget.data["role"] == 'user'
                              ? darkMode
                                  ? Colors.deepPurple
                                  : Colors.blue
                              : AppColors.lightGrey,
                        ),
                        child: widget.loading
                            ? LoadingAnimationWidget.waveDots(
                                color: widget.data["role"] == 'user'
                                    ? Colors.white
                                    : Colors.grey,
                                size: 30,
                              )
                            : Text(
                                widget.data["message"],
                                style: TextStyle(
                                  color: widget.data["role"] == 'user'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                softWrap:
                                    true, // Set the maximum number of lines
                              ),
                      ),
                      const SizedBox(height: 8), // Add spacing if needed
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: ((widget.data
                                        .toString()
                                        .contains('options') &&
                                    !widget.loading &&
                                    (widget.data["options"] ?? []).length > 1)
                                ? widget.data["options"] as List
                                : [])
                            .map((op) {
                          Map<String, dynamic> modifiedOp = Map.from(op);
                          modifiedOp["isOpen"] = false;
                          return MessageBubbleOption(
                            data: modifiedOp,
                            onPressOption: widget.onPressOption,
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  if (isUser) const SizedBox(width: 8),
                  if (isUser) getAvatar(),
                ],
              ),
              if (widget.data["time"] != null)
                Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        widget.data["time"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: Colors.grey.shade600),
                      ),
                    )),
              if (widget.isLastMessage && !widget.loading)
                EndMessageBubble(message: widget.data['description']),
            ],
          ),
        );
      },
    );
  }
}

class EndMessageBubble extends StatefulWidget {
  const EndMessageBubble({super.key, required this.message});

  final String message;

  @override
  State<EndMessageBubble> createState() => _EndMessageBubbleState();
}

class _EndMessageBubbleState extends State<EndMessageBubble> {
  // const EndMessageBubble({super.key, required this.message});

  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        final darkMode = themeProvider.isDarkMode;
        return Container(
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: Column(
            children: [
              if (!showMessage)
                Text(
                  'Would you like to continue and go to a date with this girl?',
                  style: TextStyle(
                    color: darkMode ? Colors.deepPurple : Colors.black,
                  ),
                ),
              if (!showMessage) const SizedBox(height: 20),
              if (!showMessage)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () => {
                        setState(() {
                          showMessage = true;
                        })
                      },
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: darkMode ? Colors.deepPurple : Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () => {},
                        child: Text(
                          'No',
                          style: TextStyle(
                            color: darkMode ? Colors.deepPurple : Colors.black,
                          ),
                        ))
                  ],
                ),
              if (showMessage)
                Container(
                  margin: EdgeInsets.only(top: (showMessage ? 0 : 24)),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: darkMode ? Colors.deepPurple : Colors.green[100],
                  ),
                  child: Text(widget.message),
                )
              // Text(message),
            ],
          ),
        );
      },
    );
  }
}
