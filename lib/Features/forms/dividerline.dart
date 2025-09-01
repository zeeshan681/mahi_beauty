import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class Dividerline extends StatelessWidget {
  const Dividerline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.h,
      width: 343.w,
      child: Row(
        children: [
          Expanded(child: Divider(color: AppColor.grey40, thickness: 1)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              "or",
              style: TextStyle(
                color: AppColor.grey80,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'NunitoSans',
              ),
            ),
          ),
          Expanded(child: Divider(color: AppColor.grey40, thickness: 1)),
        ],
      ),
    );
  }
}
