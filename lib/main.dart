import 'package:flutter/material.dart';
import 'package:local_shopper/screens/registrationpage.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project 3B",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const RegistrationPage(),
    );
  }
}