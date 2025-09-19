import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Storycircle extends StatelessWidget {
  final String imagePath;

  const Storycircle({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: 72.w,
      padding: EdgeInsets.all(3.r),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Color(0xFF156778), Color(0xFF03BAE1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            height: 50.h,
            width: 50.w,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Storycircle(
              imagePath: "assets/images/salon_stories/story1.png",
            ),
            onTap: () {},
          ),
          SizedBox(width: 10.h),
          GestureDetector(
            child: Storycircle(
              imagePath: "assets/images/salon_stories/story2.png",
            ),
            onTap: () {},
          ),
          SizedBox(width: 10.h),
          GestureDetector(
            child: Storycircle(
              imagePath: "assets/images/salon_stories/story3.png",
            ),
            onTap: () {},
          ),
          SizedBox(width: 10.h),
          GestureDetector(
            child: Storycircle(
              imagePath: "assets/images/salon_stories/story4.png",
            ),
            onTap: () {},
          ),
          SizedBox(width: 10.h),
          GestureDetector(
            child: Storycircle(
              imagePath: "assets/images/salon_stories/story5.png",
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
