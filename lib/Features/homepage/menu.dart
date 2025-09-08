import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomButton/button_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class HomeMenu extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {'image': 'assets/images/menu_icons/haircut.png', 'label': 'Haircut'},
    {'image': 'assets/images/menu_icons/nails.png', 'label': 'Nails'},
    {'image': 'assets/images/menu_icons/facial.png', 'label': 'Facial'},
    {'image': 'assets/images/menu_icons/coloring.png', 'label': 'Coloring'},
    {'image': 'assets/images/menu_icons/spa.png', 'label': 'Spa'},
    {'image': 'assets/images/menu_icons/waxing.png', 'label': 'Waxing'},
    {'image': 'assets/images/menu_icons/makeup.png', 'label': 'Makeup'},
    {'image': 'assets/images/menu_icons/message.png', 'label': 'Message'},
  ];

  HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 260.h,
      width: 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Heading5(
              text: 'What do you want to do?',
              color: AppColor.grey100,
            ),
          ),
          SizedBox(
            height: 300.h,
            child: GridView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.55,
              ),
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64.r,
                      backgroundColor: AppColor.primary20,
                      child: Image.asset(
                        service['image'],
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                    SizedBox(height: 8),
                    ButtonMedium(
                      text: service['label'],
                      color: AppColor.primaryColor,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
