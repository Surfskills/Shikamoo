import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      // This container is the main homepage. It is supposed to be black
      color: Colors.white,
      // This whit color makes the screen white
      child: const SafeArea(
      // This safearea makes sure that the buttons do not stray over the screen and other widgets
        child: Column(
      // This is the column where all other widgets will be aligned
          mainAxisAlignment: MainAxisAlignment.start,
      // This mainaxis alignment makes sure that the two buttons;sign in and sign up are stick at the bottom
        children: [
          Padding(padding: EdgeInsets.all(16.0)),
          Text("Login here",
          style: TextStyle( fontSize: 32, color: Colors.red)
          ),
          Padding(padding: EdgeInsets.all(16.0)),
          Text("Welcome back you have been missed",
          style: TextStyle( fontSize: 16, color: Colors.black),
          ),
          Text("been missed",
          style: TextStyle( fontSize: 16, color: Colors.black),
          ),
          TextField(
            decoration: InputDecoration(
              
              labelText: "Email",
              hintText: "Enter your email",
            ),
          )
        ],
      )
      )
    );

  }
}

// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 300, // Adjust the width according to your design
//           padding: EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.black,
//               width: 1.0,
//             ),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: TextFormField(
//             decoration: InputDecoration(
//               hintText: "Email",
//               border: InputBorder.none, // Remove the default border
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
