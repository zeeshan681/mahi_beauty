import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/homepage/appbar.dart';
import 'package:mahi_beauty/Features/homepage/card.dart';
import 'package:mahi_beauty/Features/homepage/featuredSalon/featured_salon.dart';
import 'package:mahi_beauty/Features/homepage/frame504/frame504.dart';
import 'package:mahi_beauty/Features/homepage/interest.dart';
import 'package:mahi_beauty/Features/homepage/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //appBar
            MyAppBar(),
            //PromoCard
            PromoCard(),
            SizedBox(height: 20.h),
            HomeMenu(),
            SizedBox(height: 20.h),
            Frame504(),
            SizedBox(height: 20.h),
            FeaturedSalon(),
            SizedBox(height: 20.h),
            Interest(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
