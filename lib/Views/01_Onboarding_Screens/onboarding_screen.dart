import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 207, 200, 200),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/firstBoarding.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
