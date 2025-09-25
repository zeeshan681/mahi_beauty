import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_small.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/CustomText/heading7.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class FeaturedCards extends StatelessWidget {
  final String imagePath;
  final String serviceText;
  final String title;
  final String subtitle;
  final double rating;
  final String reviews;
  const FeaturedCards({
    super.key,
    required this.imagePath,
    required this.serviceText,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 196.w,
      height: 330.h,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            //Image + Favourite icon
            children: [
              //Image
              Container(
                height: 194.h,
                width: 196.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0.r),
                  child: Image.asset(
                    imagePath,
                    width: 196.w,
                    height: 194.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //Favourite icon
              Padding(
                padding: EdgeInsets.only(left: 148.w, top: 16.h),
                child: Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.accentLight,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: AppColor.anccentRed,
                      weight: 2,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          //Service Text
          BodytextSmall(text: serviceText, color: AppColor.primaryColor),
          SizedBox(height: 6.h),
          //Title
          Heading5(text: title, color: AppColor.grey100),
          SizedBox(height: 4.h),
          //subtitle
          BodytextMedium(text: subtitle, color: AppColor.grey80),
          SizedBox(height: 20.h),
          //rating
          Row(
            children: [
              Icon(Icons.star, color: AppColor.secondaryColor, size: 16),
              SizedBox(width: 4.w),
              Heading7(text: rating.toString(), color: AppColor.grey100),
              SizedBox(width: 2.w),
              //Reviews
              BodytextSmall(text: reviews.toString(), color: AppColor.grey100),
            ],
          ),
        ],
      ),
    );
  }
}
