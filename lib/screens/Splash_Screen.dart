import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterpm_ticketkonser/loginview.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginview()));
    });
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 255, 255),
          image: DecorationImage(
            image: AssetImage("images/image3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("images/logo1.png"),
                height: 320,
                width: 320,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
