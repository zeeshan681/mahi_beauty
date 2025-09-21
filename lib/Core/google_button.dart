import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GoogleButton({
    super.key,
    required this.onPressed,
    this.text = "Sign in with Google",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          icon: Image.asset("assets/images/google.png", height: 25.h),
          label: Text(text),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
