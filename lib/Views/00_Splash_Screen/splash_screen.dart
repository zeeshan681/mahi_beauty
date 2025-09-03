import 'package:flutter/material.dart';
import 'package:mahi_beauty/Core/coustm_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SplashscreenBackgroundcolor,
      body: Column(children: [Text("helllo")]),
    );
  }
}
