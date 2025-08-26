import 'package:flutter/material.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class Heading3 extends StatelessWidget {
  final String text;
  const Heading3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColor.whiteColor,
        fontFamily: "Manrope",
      ),
    );
  }
}
