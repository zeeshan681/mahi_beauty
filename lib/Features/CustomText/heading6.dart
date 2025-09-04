import 'package:flutter/material.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class Heading6 extends StatelessWidget {
  final String text;
  const Heading6({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: 'Manrope',
      ),
    );
  }
}
