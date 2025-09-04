import 'package:flutter/material.dart';

class ButtonMedium extends StatelessWidget {
  final String text;
  final Color color;
  const ButtonMedium({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Manrope',
        ),
      ),
    );
  }
}
