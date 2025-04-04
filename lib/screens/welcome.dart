import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'AlfaChat',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        letterSpacing: 4,
                        color: Color.fromRGBO(49, 161, 221, 1)),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 215,
                      child: Text(
                        'A fun way to learn the text game',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 21,
                            color: Color.fromRGBO(255, 165, 0, 1)),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/welcome.svg',
                    height: (height * 52) / 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'profile_screen');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50), backgroundColor: const Color.fromRGBO(49, 161, 221, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
