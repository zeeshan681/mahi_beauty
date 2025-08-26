// ignore_for_file: camel_case_types, empty_constructor_bodies
import 'package:flutter/material.dart';
import 'package:mahi_beauty/Features/CustomText/body_text.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/button_large.dart';
import 'package:mahi_beauty/Features/page_view.dart';
import 'package:mahi_beauty/Features/signin_text.dart';
import 'package:mahi_beauty/onBoarding/on_boarding4.dart';

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
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    "assets/images/onBoarding3.png",
                    width: 375,
                    height: 812,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 242.0),
                  child: Image.asset(
                    "assets/images/overlay.png",
                    width: 375,
                    height: 570,
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
                          Heading3(text: "Find The Best Service"),
                          SizedBox(height: 15),
                          BodyText(
                            text: "There are various services from the best",
                          ),
                          BodyText(
                            text: "salons that have become our partners.",
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      PageViewIndicator(),
                      SizedBox(height: 20),
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
                        width: 335,
                        height: 60,
                        top: 16,
                        bottom: 16,
                        left: 32,
                        right: 32,
                      ),
                      SizedBox(height: 25),
                      SignInText(),
                      SizedBox(height: 70),
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
