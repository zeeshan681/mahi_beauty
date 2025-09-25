import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomButton/button_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading5.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/homepage/featuredSalon/cards.dart';

class FeaturedSalon extends StatelessWidget {
  const FeaturedSalon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 405.h,
      padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
      child: Column(
        children: [
          //Heading + View all
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Heading
              Heading5(text: "Featured Salon", color: AppColor.grey100),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: ButtonMedium(
                  text: "View all",
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedCards(
                  imagePath:
                      "assets/images/Featured_Cards/salon_de_elegance.png",
                  title: "Salon de Elegance",
                  subtitle: "360 Stillwater Rd. Palm City...",
                  rating: 4.8,
                  serviceText: "Hairs.Nails.Facial",
                  reviews: "(3.1k)",
                ),
                SizedBox(width: 12.w),
                FeaturedCards(
                  imagePath:
                      "assets/images/Featured_Cards/plush_beauty_lounge.png",
                  title: "Plush Beauty Lounge",
                  subtitle: "2607 Haymond Rocks...",
                  rating: 4.7,
                  serviceText: "Hairs.Facial.2+",
                  reviews: "(2.7k)",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
