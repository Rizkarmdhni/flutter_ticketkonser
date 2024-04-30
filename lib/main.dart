import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterpm_ticketkonser/screens/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ticket konser",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
