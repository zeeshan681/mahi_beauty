import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomButton/button_medium.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //!st Row of Categories items
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategorieItems(
              image: 'assets/images/menu_icons/haircut.png',
              labelText: 'Haircut',
            ),
            CategorieItems(
              image: 'assets/images/menu_icons/nails.png',
              labelText: 'Nails',
            ),
            CategorieItems(
              image: 'assets/images/menu_icons/facial.png',
              labelText: 'Facial',
            ),
            CategorieItems(
              image: 'assets/images/menu_icons/coloring.png',
              labelText: 'Coloring',
            ),
          ],
        ),
        SizedBox(height: 8.h),
        // 2nd Row of Categories items
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategorieItems(
              image: 'assets/images/menu_icons/spa.png',
              labelText: 'Spa',
            ),
            CategorieItems(
              image: 'assets/images/menu_icons/waxing.png',
              labelText: 'Waxing',
            ),
            CategorieItems(
              image: 'assets/images/menu_icons/makeup.png',
              labelText: 'Makeup',
            ),
            CategorieItems(
              image: 'assets/images/menu_icons/message.png',
              labelText: 'Message',
            ),
          ],
        ),
      ],
    );
  }
}

class CategorieItems extends StatelessWidget {
  final String labelText;
  final String image;
  const CategorieItems({
    super.key,
    required this.image,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64.h,
          width: 64.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primary20,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.w,
              right: 12.w,
              top: 10.h,
              bottom: 10.h,
            ),
            child: Image.asset(image, height: 40.h, width: 40.w),
          ),
        ),
        SizedBox(height: 2.h),
        ButtonMedium(color: AppColor.primaryColor, text: labelText),
      ],
    );
  }
}
