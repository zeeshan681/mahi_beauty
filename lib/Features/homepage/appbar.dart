import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 80),
      child: SizedBox(
        width: 375.w,
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading3(text: 'Hello, Samantha', color: AppColor.grey100),
                BodytextMedium(
                  text: 'Find the services you want, and treat yourself',
                  color: AppColor.grey80,
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: AppColor.primaryColor,
              radius: 25,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: AppColor.whiteColor, size: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
