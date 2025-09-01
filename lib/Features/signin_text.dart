import 'package:flutter/material.dart';

class SignInText extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  final VoidCallback onPressed;
  const SignInText({
    super.key,
    required this.text1,
    required this.text2,
    required this.color1,
    required this.color2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: color1,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.68,
            fontFamily: 'NunitoSans',
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: TextStyle(
              color: color2,
              fontSize: 14,
              fontWeight: FontWeight.w900,
              fontFamily: 'Manrope',
            ),
          ),
        ),
      ],
    );
  }
}
