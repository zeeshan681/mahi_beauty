import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mahi_beauty/onBoarding/on_boarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 375,
          height: 812,
          decoration: const BoxDecoration(
            color: Color(0xFF156778),
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          child: Center(child: Image.asset("assets/images/logo.png")),
        ),
      ),
    );
  }
}
