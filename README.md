# Alfa Chat

This is a flirt bot chatting app.

## Getting Started
```
flutter run -d emulator-5554

```
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For some issues:
- If you against to some Fluent_ui errors when running on dekstop app. You can check your flutter channel ```flutter channel``` and if its not in stable channel you can
 swich your channel with ```flutter channel stable``` command and after that run ```flutter upgrade```.
- Enable desktop support, on project root run this commands:
 ```flutter config --enable-windows-desktop```
```flutter config --enable-macos-desktop```
```flutter config --enable-linux-desktop```

For some other issues:
- If your Flutter version is 3.10.5 adn Dart SDK version is 3.0.5 then you should downgrade to 3.7.11 or 3.7.8 it depends on your system.
  ```flutter downgrade <flutter-version>```


## Getting Build on Devices

- ```flutter build apk --release``` for android build
      builds the exe file which is located in ```yourprojectpath/build/app/outputs/apk/...```

- ```flutter build windows``` for windows build
      builds the exe file which is located in ```yourprojectpath/your_project_build/windows/runner/Release```