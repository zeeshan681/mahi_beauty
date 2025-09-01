// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/onBoarding/on_boarding1.dart';
import 'package:mahi_beauty/onBoarding/on_boarding2.dart';
import 'package:mahi_beauty/onBoarding/on_boarding3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'app_color.dart'; // Assuming you defined AppColor here

class PageViewIndicator extends StatelessWidget {
  final PageController _controller = PageController();

  PageViewIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 👇 Give PageView a defined height using Expanded
        Expanded(
          child: PageView(
            controller: _controller,
            children: const <Widget>[
              OnBoarding1(),
              OnBoarding2(),
              OnBoarding3(),
            ],
          ),
        ),

        // 👇 SmoothPageIndicator below
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              dotHeight: 12.h,
              dotWidth: 12.w,
              spacing: 8,
              dotColor: AppColor.whiteColor,
              activeDotColor: AppColor.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
