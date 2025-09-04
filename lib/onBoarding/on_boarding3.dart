// ignore_for_file: camel_case_types, empty_constructor_bodies
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_large.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/CustomButton/button_large.dart';
import 'package:mahi_beauty/Features/signin_text.dart';
import 'package:mahi_beauty/onBoarding/on_boarding4.dart';
import 'package:mahi_beauty/views/auth/log_in.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                // Image at the top
                ClipRRect(
                  borderRadius: BorderRadius.circular(32.r),
                  child: Image.asset(
                    "assets/images/onBoarding3.png",
                    width: 375.w,
                    height: 812.h,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 242.0),
                  child: Image.asset(
                    "assets/images/overlay.png",
                    width: 375.w,
                    height: 570.h,
                  ),
                ),
                //main ui
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Heading3(
                            text: "Find The Best Service",
                            color: AppColor.whiteColor,
                          ),
                          SizedBox(height: 15.h),
                          BodyText(
                            text:
                                "There are various services from the best\nsalons that have become our partners.",
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      // PageViewIndicator(),
                      SizedBox(height: 20.h),
                      ButtonLarge(
                        text: "Next",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnBoarding4(),
                            ),
                          );
                        },
                        width: 335.w,
                        height: 60.h,
                        top: 16.h,
                        bottom: 16.h,
                        left: 32.w,
                        right: 32.w,
                      ),
                      SizedBox(height: 25.h),
                      SignInText(
                        text1: 'Already have an account?',
                        color1: AppColor.whiteColor,
                        text2: 'Sign In',
                        color2: AppColor.secondaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogIn()),
                          );
                        },
                      ),
                      SizedBox(height: 70.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
