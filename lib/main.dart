import 'package:flirt_coach/localStorage/login_local.dart';
import 'package:flirt_coach/localStorage/sound_local.dart';
import 'package:flirt_coach/models/purchase_manager.dart';
import 'package:flirt_coach/routes/routes.dart';
import 'package:flirt_coach/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:provider/provider.dart';

import 'localStorage/first_time_local.dart';
import 'providers/index.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
   final available = await InAppPurchase.instance.isAvailable();
  debugPrint('IAP available: $available'); 

  final purchaseManager = PurchaseManager();
  
  await purchaseManager.initialize();
  runApp(
    Provider<PurchaseManager>.value(
      value: purchaseManager,
      child: MyApp(),
    ),
  );
  ;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLogin = false;

  Future getIsLogin() async {
    LoginLocal().setLoginTime(); //set login time
    bool isLogin = await LoginLocal().getLoginValue();

    setState(() {
      _isLogin = isLogin;
    });
  }

  var firstTime;
  void getFirstTime() async {
    firstTime = await FirstTimeLocal().getFirstTime() ??
        false; // Ensure firstTime is never null
    setState(() {}); // Trigger rebuild with updated firstTime
  }

  @override
  void initState() {
    getFirstTime();
    getIsLogin();
    super.initState();
  }

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<SoundProvider>(
            create: (_) => SoundProvider(context)),
      ],
      child: Builder(
        builder: (BuildContext context) {
          void soundLocally() async {
            bool soundMode = await SoundLocal().getSoundValue();
            Provider.of<SoundProvider>(context, listen: false)
                .updateSound(soundMode);
          }

          soundLocally();
          return MaterialApp(
            title: 'Flirt Coach',
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ThemeProvider>(context).isDarkMode
                ? AppTheme().darkTheme
                : AppTheme().lightTheme,
            routes: routes,
            initialRoute:
                (firstTime ?? false) ? 'conversation_screen' : 'welcome_screen',

            // initialRoute: firstTime ? 'conversation_screen' : 'welcome_screen',
          );
        },
      ),
    );
  }
}
