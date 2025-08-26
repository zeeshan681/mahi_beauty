import 'package:flutter/material.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class BodyText extends StatelessWidget {
  final String text;
  const BodyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColor.whiteColor,
        fontFamily: "NunitoSans",
      ),
    );
  }
}
