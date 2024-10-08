import 'package:blockplanner/screens/home.dart';
import 'package:blockplanner/screens/tela_login.dart';
import 'package:blockplanner/screens/tela_signup.dart';
//import 'package:blockplanner/screens/tela_login.dart';
// import 'package:blockplanner/screens/tela_signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const SignUpPage(),
    );
  }
}
