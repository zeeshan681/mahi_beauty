import 'package:flutter/material.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class SignInText extends StatelessWidget {
  const SignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.68,
            fontFamily: 'NunitoSans',
          ),
        ),
        Text(
          "Sign In",
          style: TextStyle(
            color: AppColor.secondaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w900,
            fontFamily: 'Manrope',
          ),
        ),
      ],
    );
  }
}
