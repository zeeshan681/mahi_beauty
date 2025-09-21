import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Core/onboarding_comm.dart';
import 'package:mahi_beauty/Views/02_Started_Screen/started_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final data = onboardingData[index];
              return OnboardingComm(
                image: data["image"]!,
                titel: data["title"]!,
                description: data["description"]!,
                buttonText: index == onboardingData.length - 1
                    ? "Get Started"
                    : "Next",
                onNext: () {
                  if (index == onboardingData.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartedScreen()),
                    );
                  } else {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                subtitle: data["subtitle"]!,
                onSignIn: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartedScreen()),
                  );
                },
              );
            },
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 200.h),
              child: SmoothPageIndicator(
                controller: _controller,
                count: onboardingData.length,
                effect: ExpandingDotsEffect(
                  dotColor: Colors.white,

                  activeDotColor: Color(0XFFF98600),
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                  spacing: 3.w,
                  expansionFactor: 4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> onboardingData = [
  {
    "image": "assets/images/firstBoarding.png",
    "title": "Best Stylist For You",
    "description": "Styling your appearance\naccording to your lifestyle",
    "subtitle": "Already have an account?",
  },
  {
    "image": "assets/images/secondBoarding.png",
    "title": "Meet Our Specialists",
    "description":
        "There are many best stylists from\nall the best salons ever",
    "subtitle": "Already have an account?",
  },
  {
    "image": "assets/images/thirdBoarding.png",
    "title": "Find The Best Service",
    "description":
        "There are various services from the best\nsalons that have become our partners.",
    "subtitle": "Already have an account?",
  },
];
