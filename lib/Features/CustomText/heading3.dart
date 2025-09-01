import 'package:flutter/material.dart';

class Heading3 extends StatelessWidget {
  final String text;
  final Color color;
  const Heading3({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: "Manrope",
      ),
    );
  }
}
