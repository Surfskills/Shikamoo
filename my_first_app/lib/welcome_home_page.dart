import 'package:flutter/material.dart';

class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});


  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.amber,
              height: 120,
              width: 120,
              child: const Icon(
                Icons.ac_unit,
                size: 50,
                color: Colors.white,),
            )
            
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              ),
            // This padding is for the text. It means padding is applied uniformly around
             const Text (
                "Discover Your Career",
                style: TextStyle( fontSize: 32, color: Colors.red),
              ),
        ],)
    
    );

  }
}
