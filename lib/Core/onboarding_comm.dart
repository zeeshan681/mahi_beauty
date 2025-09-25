import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Views/03_Signin_Screen/signin_screen.dart';

class OnboardingComm extends StatelessWidget {
  final String image;
  final String titel;
  final String description;
  final String subtitle;
  final String buttonText;
  final VoidCallback onNext;
  final VoidCallback? onSignIn;

  const OnboardingComm({
    super.key,
    required this.image,
    required this.titel,
    required this.description,
    required this.buttonText,
    required this.onNext,
    this.onSignIn,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(image, fit: BoxFit.cover),
        ),

        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // ignore: deprecated_member_use
                Colors.black.withOpacity(0.1),
                // ignore: deprecated_member_use
                Colors.black.withOpacity(0.7),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Spacer(flex: 102),
              Text(
                titel,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10.h),

              Text(
                description,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 17),

              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff156778),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  onPressed: onNext,
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 15.sp, color: Colors.white),
                  ),
                  SizedBox(width: 5.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SigninScreen()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFF98600),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35.h),
            ],
          ),
        ),
      ],
    );
  }
}
