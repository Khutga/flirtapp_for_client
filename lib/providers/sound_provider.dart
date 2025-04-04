import 'package:flirt_coach/localStorage/sound_local.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SoundProvider extends ChangeNotifier {
  bool isSoundOpen = true;
  BuildContext context; // Add a context property to your provider

  SoundProvider(this.context) {
    _initializeSound();
  }

  void updateSound(bool isSoundOpen) {
    this.isSoundOpen = isSoundOpen;
    notifyListeners();
    print('sound in Local UPDATEsOUND: $isSoundOpen');
  }

  Future<void> _initializeSound() async {
    print('sound in Local: $isSoundOpen');
    bool soundValue = await SoundLocal().getSoundValue();
    //   Provider.of<SoundProvider>(context, listen: false).updateSound(soundValue);
    print('sound in Local2: $soundValue');
    isSoundOpen = soundValue;
  }
}
