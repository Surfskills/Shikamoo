import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      // This container is the main homepage. It is supposed to be black
      color: Colors.white,
      // This whit color makes the screen white
      child: SafeArea(
      // This safearea makes sure that the buttons do not stray over the screen and other widgets
        child: Column(
      // This is the column where all other widgets will be aligned
          mainAxisAlignment: MainAxisAlignment.end,
      // This mainaxis alignment makes sure that the two buttons;sign in and sign up are stick at the bottom
      
          children: [
            Expanded (child: Image.asset("assets/images/home_page.png", fit: BoxFit.contain,)),
            // image is the first child of the column and it is expanded to avoid overlapping of the contentr
            const Padding(
              padding: EdgeInsets.all(16.0),
              ),
            // This padding is for the text. It means padding is applied uniformly around
             const Text (
                "Discover Your",
                style: TextStyle( fontSize: 32, color: Colors.red),
              ),
            // This is the first text and it is styled
              const Padding(
              padding: EdgeInsets.all(16.0),
              ),
             const Text (
                "Dream Job Here",
                style: TextStyle( fontSize: 32, color: Colors.red),
              ),
              const Padding(
              padding: EdgeInsets.all(16.0),
              ),
              const Text (
                "Discover your dream job and apply with your cv if you have one",
                style: TextStyle( fontSize: 16, color: Colors.black),
              ),
              
              Container(
                margin:EdgeInsets.symmetric(vertical: 80, horizontal: 16),
                // This is a buttons widget container. It is within the column
                child: Row(
                  //  The row for the two buttons starts from here. It is a row within a column
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // This is used to create a space in between the buttons
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // This two are used to align the buttons at the center
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, 
                        side: BorderSide(), ),
                      // This is an elevated button with a function onPress and a container child
                      onPressed: () {}, 
                      child: Container(
                        // This is a child container where the text child is styled
                        child: const Text(
                        "Login",
                        style:TextStyle(color: Colors.black),
                      ),
                    )
                    ),
                    ElevatedButton(
                      // This is an elevated button with a function onPress and a container child
                      onPressed: () {}, 
                      child: Container(
                        // This is a child container where the text child is styled
                        child: const Text(
                        "Register",
                        style:TextStyle(color: Colors.black),
                      ),
                    )
                    )
                  ],
                ),
              )
          ],),
      )
    );

  }
}
