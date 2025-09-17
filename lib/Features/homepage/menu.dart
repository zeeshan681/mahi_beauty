import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/homepage/catagories.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      width: 375.w,
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Heading5(text: 'What do you want to do?', color: AppColor.grey100),
            SizedBox(height: 14.h),
            //catagories
            Categories(),
          ],
        ),
      ),
    );
  }
}
