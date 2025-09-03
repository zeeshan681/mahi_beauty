import 'package:flutter/material.dart';
import 'package:mahi_beauty/Views/00_Splash_Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const SplashScreen());
  }
}
