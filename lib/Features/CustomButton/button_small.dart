import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class ButtonSmall extends StatelessWidget {
  final String text;
  const ButtonSmall({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: AppColor.grey100,
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Manrope',
        ),
      ),
    );
  }
}
