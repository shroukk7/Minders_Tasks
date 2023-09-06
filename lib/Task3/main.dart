//Task 1
// import 'package:flutter/material.dart';
// import 'package:task2/screens/FirstScreen.dart';
// import 'package:task2/screens/SecondScreen.dart';
// import 'package:task2/screens/ThirdScreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp (
//       debugShowCheckedModeBanner: false,
//       title: "App",
//       //home: FirstScreen(),
//       //home: SecondScreen(),
//       //home: ThirdScreen(),

//     );
//   }
// }



//Task 2
// import 'package:flutter/material.dart';
// import 'Task2/Screens/firstScreen.dart';
// import 'Task2/Screens/secondScreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp (
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       title: "App",
//       home: Contacts(),
//       //home: screen2(),
//     );
//   }
// }



//Task 3
import 'package:flutter/material.dart';
import 'Login.dart';
import 'Registration.dart';
import 'forPass.dart';
import 'homePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "App",
      home: Register(),
      routes: {
        Login.id:(BuildContext context) => Login(),
        Register.id:(BuildContext context) => Register(),
        Forgotpass.id:(BuildContext context) => Forgotpass(),
        Home.id:(BuildContext context) => Home(),
      },
      //home:Login(),
      //home: Forgotpass(),
    );
  }
}


// test