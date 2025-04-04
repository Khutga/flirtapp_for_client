import 'package:flirt_coach/theme/app_colors.dart';
import 'package:flutter/material.dart';

class WrongAnswerScreen extends StatefulWidget {
  const WrongAnswerScreen({Key? key}) : super(key: key);

  @override
  State<WrongAnswerScreen> createState() => _WrongAnswerScreenState();
}

class _WrongAnswerScreenState extends State<WrongAnswerScreen> {
  String message = '';
  String description = '';
  bool status = false;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (args != null && args.containsKey('message')) {
      //Initializing flirtUser with routes data
      if (message.isEmpty && description.isEmpty) {
        setState(() {
          message = args['message'];
          description = args['description'];
          status = args['status'] as bool;
        });
      }
    }

    Widget errorBox(String message) {
      return IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: status ? AppColors.lightSuccess : AppColors.lightError,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(status ? Icons.check : Icons.close, color: Colors.white),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget goBackButton() {
      return InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.lightBlack,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Row(
            children: [
              Icon(
                color: Colors.white,
                Icons.chevron_left,
                size: 30,
              ),
              Text(
                'Go Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              errorBox(message),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  goBackButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
