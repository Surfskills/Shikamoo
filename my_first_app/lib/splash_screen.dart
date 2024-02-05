import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    const oneSec = Duration(seconds: 5);

    Timer.periodic(
      oneSec,
      (Timer timer) {
        print("Timed: ");
        Navigator.of(context).pushNamed("/home_screen");
        timer.cancel();
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF24A365),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white.withAlpha(40),
              child: Image.asset(
                "images/ic_logo.png",
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: RichText(
              text: const TextSpan(
                text: 'Eco',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Log',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
