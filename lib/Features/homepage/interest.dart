import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomButton/button_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class Interest extends StatelessWidget {
  const Interest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      width: 442.w,
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading5(text: "Most Search Interest", color: AppColor.grey100),
          SizedBox(height: 20.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Menu(
                  image: "assets/images/menu_icons/haircut.png",
                  text: "Haircut",
                ),
                SizedBox(width: 7.w),
                Menu(
                  image: "assets/images/menu_icons/facial.png",
                  text: "Facial",
                ),
                SizedBox(width: 7.w),
                Menu(
                  image: "assets/images/menu_icons/nails.png",
                  text: "Nails",
                ),
                SizedBox(width: 7.w),
                Menu(
                  image: "assets/images/menu_icons/coloring.png",
                  text: "Coloring",
                ),
                SizedBox(width: 7.w),
                Menu(image: "assets/images/menu_icons/spa.png", text: "Spa"),
                Menu(
                  image: "assets/images/menu_icons/waxing.png",
                  text: "Waxing",
                ),
                SizedBox(width: 7.w),
                Menu(
                  image: "assets/images/menu_icons/makeup.png",
                  text: "Makeup",
                ),
                SizedBox(width: 7.w),
                Menu(
                  image: "assets/images/menu_icons/message.png",
                  text: "Message",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final String image;
  final String text;
  const Menu({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 146.w,
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: AppColor.primary20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 32.h, width: 32.w),
          ButtonMedium(text: text, color: AppColor.primaryColor),
        ],
      ),
    );
  }
}
