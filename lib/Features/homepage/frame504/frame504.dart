import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/homepage/frame504/storycircle.dart';

class Frame504 extends StatefulWidget {
  const Frame504({super.key});

  @override
  State<Frame504> createState() => _Frame504State();
}

class _Frame504State extends State<Frame504> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: SizedBox(
        height: 134.h,
        width: 391.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading5(text: "Salon you follow", color: AppColor.grey100),
            SizedBox(height: 12.h),
            Story(),
            //CircleAvatar(radius: 40.r, backgroundColor: Colors.lightGreen),
          ],
        ),
      ),
    );
  }
}
