import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.green.withAlpha(50),
                        ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(MediaQuery.of(context).size.width),
                        bottomRight: Radius.circular(
                            MediaQuery.of(context).size.width))),
                child: Column(
                  children: [
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.green.withAlpha(50),
                        child: Image.asset(
                          "images/ic_logo.png",
                          width: 40,
                          height: 40,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(32.0),
                      child: Image.asset("images/welcome_page.png"),
                    )),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                "Help the Environment",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Incentivise your friends and neighbor to dispose their refuse well",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.withAlpha(80),
                      elevation: 0),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
