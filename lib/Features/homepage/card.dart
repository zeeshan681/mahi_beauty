import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/CustomText/heading6.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118.h,
      width: 343.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Stack(
          children: [
            // background Image
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                AppColor.ellipse19,
                BlendMode.saturation,
              ),
              child: Image.asset(
                'assets/images/promoCard.png',
                height: 229.h,
                width: 343.w,
                fit: BoxFit.cover,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Text and Button Overlay
                Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22, left: 24),
                        child: const Heading6(
                          text: 'Look more beautiful and\n save more discount',
                        ),
                      ),
                      // const Spacer(),
                      Container(
                        height: 27.h,
                        width: 147.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColor.secondary20,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50.r),
                            bottomRight: Radius.circular(50.r),
                          ),
                        ),
                        child: Heading5(
                          text: 'Get offer now!',
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                // // 50% text
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Container(
                      height: 77.h,
                      width: 77.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Heading6(text: 'Up to'),
                              Heading3(text: '50%', color: AppColor.whiteColor),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
