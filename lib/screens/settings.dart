import 'package:flirt_coach/localStorage/sound_local.dart';
import 'package:flirt_coach/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:logger/logger.dart';

import '../localStorage/theme_local.dart';
import '../providers/index.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var darkMode =
        Provider.of<ThemeProvider>(context, listen: false).isDarkMode;

    return Consumer<SoundProvider>(
      builder: (context, soundProvider, child) {
        bool soundMode = soundProvider.isSoundOpen;
        final logger = Logger();

        logger.d('soundMode initialize in settings: $soundMode');

        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Settings'),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: ListView(
                  children: [
                    SettingCard(title: 'LANGUAGE'),
                    SettingCard(
                      title:
                          'DARK THEME ${Provider.of<ThemeProvider>(context, listen: false).isDarkMode ? 'ON' : 'OFF'}',
                      onTap: () {
                        darkMode = !darkMode;
                        Provider.of<ThemeProvider>(context, listen: false)
                            .updateTheme(darkMode);
                        ThemeLocal().setThemeValue(darkMode);
                      },
                    ),
                    SettingCard(
                      title: 'SOUND EFFECT ${soundMode ? 'ON' : 'OFF'}',
                      onTap: () async {
                        Provider.of<SoundProvider>(context, listen: false)
                            .updateSound(!soundMode);
                        await SoundLocal().setSoundValue(!soundMode);
                        var soundLocal = await SoundLocal().getSoundValue();
                        logger
                            .d('soundMode updated in SoundLocal: $soundLocal');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
