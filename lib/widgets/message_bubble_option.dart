import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index.dart';

class MessageBubbleOption extends StatefulWidget {
  const MessageBubbleOption(
      {super.key, required this.data, required this.onPressOption});

  final data;
  final onPressOption;

  @override
  State<MessageBubbleOption> createState() => _MessageBubbleOptionState();
}

const alarmAudioPath = "sounds/message.mp3";

// 'assets/sounds/message.mp3'
class _MessageBubbleOptionState extends State<MessageBubbleOption> {
  Widget errorPart() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
          child: const Icon(
            Icons.close,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(width: 8),
        const Text('See Details'),
      ],
    );
  }

  void playSound() async {
    await player.play(AssetSource(alarmAudioPath));
    print('player is working');
  }

  final AudioPlayer player = AudioPlayer();
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        final darkMode = themeProvider.isDarkMode;
        return Consumer<SoundProvider>(
            builder: (context, soundProvider, child) {
          final soundMode = soundProvider.isSoundOpen;
          return GestureDetector(
            onTap: () {
              if (widget.data["status"] == true && soundMode == true) {
                playSound();
                print('soundPlayWorking');
              }
              widget.onPressOption(widget.data as Map<String, dynamic>);
              if (widget.data["status"] == false) {
                setState(() {
                  widget.data["isOpen"] = true;
                });
              }
            },
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: darkMode ? Colors.deepPurple : Colors.blue,
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.arrow_forward, size: 18),
                        const SizedBox(width: 8),
                        Expanded(
                            child:
                                Text(widget.data["message"], softWrap: true)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (widget.data["status"] == false &&
                      widget.data["isOpen"] == true)
                    errorPart(),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
