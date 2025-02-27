// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/", routes: {
      "/": (context) => const Welcome(),
      "/login": (context) => const Login(),
      "/signup": (context) => const Signup(),
    });
  }
}
