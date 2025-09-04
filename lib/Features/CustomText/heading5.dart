import 'package:flutter/material.dart';

class Heading5 extends StatelessWidget {
  final String text;
  final Color color;
  const Heading5({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: 'Manrope',
      ),
    );
  }
}
