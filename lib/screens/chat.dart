import 'dart:async';

import 'package:flirt_coach/localStorage/chat_history_local.dart';
import 'package:flutter/material.dart';

import '../widgets/index.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var messages = [];
  var history = [];
  var messageIndex = 0;

  var profilePic = '';
  var firstName = '';

  var conversationId = -1;

  bool loading = false;

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToBottom() {
    if (_scrollController.hasClients) {
      // Ensure controller is attached
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeOut,
      );
    }
  }

  List<Map<String, dynamic>> removeOptionKeys() {
    List<Map<String, dynamic>> temp = [];

    for (var e in history) {
      Map<String, dynamic> element = Map.from(e as Map<String, dynamic>);

      if (element.containsKey('options')) {
        element.remove('options');
        temp.add(element);
      } else {
        temp.add(e);
      }
    }

    return temp;
  }

  void getNextMessage() {
    if (messageIndex > -1) {
      // print('getNextMessage ${messages[messageIndex]['id']}');

      setState(() {
        if (messageIndex > 0) {
          loading = true;
        }
      });

      List<Map<String, dynamic>> tempHistory = removeOptionKeys();
      messageIndex++;

      if (messages.length != messageIndex) {
        tempHistory.add(messages[messageIndex]);
      }

      if (messageIndex == 1) {
        if (mounted) {
          setState(() {
            history = tempHistory;
          });
        }

        Future.delayed(const Duration(milliseconds: 3000), () {
          scrollToBottom();
        });

        return;
      }

      Future.delayed(const Duration(seconds: 3), () {
        // print('messages.length: ${messages.length}');
        // print('messageIndex: $messageIndex');

        // print('tempHistory: ${tempHistory.last}');

        ChatHistoryLocal().setChatHistoryValue(tempHistory, conversationId);

        if (mounted) {
          setState(() {
            if (messageIndex > 0) {
              loading = false;
            }
            history = tempHistory;
          });
        }

        Future.delayed(const Duration(milliseconds: 3000), () {
          if (mounted && _scrollController.hasClients) {
            // Ensure mounted and attached
            scrollToBottom();
          }
        });
      });
    }
  }

  void onPressOption(data) {
    if (data["status"]) {
      setState(() {
        loading = true;
      });

      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          loading = false;
        });
      });

      messageIndex++;

      List<Map<String, dynamic>> temp = removeOptionKeys();

      temp.add(data);

      if (messages.length != messageIndex) {
        temp.add(messages[messageIndex]);

        var currentRole = messages[messageIndex]["role"];

        while (currentRole == 'user') {
          messageIndex++;

          if (messages.length != messageIndex) {
            temp.add(messages[messageIndex]);
            currentRole = messages[messageIndex]["role"];
          }
        }
      }

      ChatHistoryLocal().setChatHistoryValue(temp, conversationId);

      setState(() {
        history = temp;
      });

      scrollToBottom();
    } else {
      showAlertDialog(data["message"], data["description"], data["status"]);
    }
  }

  void getInitialMessages() {
    ChatHistoryLocal().getChatHistoryValue(conversationId).then((value) {
      if (value.isEmpty) {
        setState(() {
          history.add(messages[0]);
        });
      } else {
        var tempId = -1;

        for (var e in value) {
          if (e["description"] == null) {
            tempId++;
          }
        }

        setState(() {
          messageIndex = tempId;
          history = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (args != null && args.containsKey('messages')) {
      //Initializing flirtUser with routes data
      if (messages.isEmpty && history.isEmpty) {
        setState(() {
          profilePic = args['profilePic'];
          firstName = args['firstName'];
          conversationId = args['conversationId'];
          messages = args['messages'];

          getInitialMessages();
        });
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('$firstName - Online'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                itemCount: history.length,
                itemBuilder: (BuildContext context, int i) {
                  var data = history[i];
                  var isLastMessage = data['id'] == messages.last['id'];

                  return MessageBubble(
                    loading: loading && i == history.length - 1,
                    data: data,
                    onPressOption: onPressOption,
                    getNextMessage: getNextMessage,
                    isLastMessage: isLastMessage,
                    profilePic: profilePic,
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: 'Enter Text',
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: 'Enter Text',
                    labelStyle: const TextStyle(
                      color: Colors.grey, // Changed to gray
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: scrollToBottom,
          isExtended: true,
          tooltip: "Scroll to Bottom",
          child: const Icon(Icons.arrow_downward),
        ),
        floatingActionButtonLocation:
            _CustomFloatingActionButtonLocation(100.0),
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

  // Future<void> showAlertDialog(String message, String description) async {
  //   return showDialog<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Yanlış Cevap'),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text(message),
  //               Text(description),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: const Text('Tamam'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}

class _CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  final double bottomOffset;

  _CustomFloatingActionButtonLocation(this.bottomOffset);

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double x = (scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width) -
        24;
    final double y = scaffoldGeometry.scaffoldSize.height -
        scaffoldGeometry.floatingActionButtonSize.height -
        bottomOffset;
    return Offset(x, y);
  }
}
