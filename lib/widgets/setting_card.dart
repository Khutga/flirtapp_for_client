import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index.dart';

class SettingCard extends StatefulWidget {
  final String title;
  final void Function()? onTap;
  const SettingCard({super.key, required this.title, this.onTap});

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    var darkMode =
        Provider.of<ThemeProvider>(context, listen: false).isDarkMode;
    return InkWell(
      onTap: widget.onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: darkMode ? Colors.grey.shade800 : Colors.grey.shade300,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
