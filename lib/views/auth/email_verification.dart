import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/CustomButton/button_large.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mahi_beauty/views/auth/reset_password.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final _formKey = GlobalKey<FormState>();

  void _submitLoginForm() {
    if (_formKey.currentState!.validate()) {}
  }
  // otp code setting

  String otpCode = '';
  int countdown = 59;
  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    Future.delayed(Duration(seconds: 1), () {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
        startCountdown();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //appbar
          Padding(
            padding: EdgeInsets.only(top: 88.h, left: 16.w),
            child: SizedBox(
              height: 80.h,
              width: 340.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading3(
                    text: "Email Verification,",
                    color: AppColor.grey100,
                  ),
                  SizedBox(height: 5.h),
                  BodytextMedium(
                    text: "Please type OTP code that we give you",
                    color: AppColor.grey80,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.h),
          //Form
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  // OTP Code
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: AppColor.grey20,
                    focusedBorderColor: AppColor.primaryColor,
                    showFieldAsBox: true,
                    fieldWidth: 73.75.w,
                    fieldHeight: 51.h,
                    filled: true,
                    borderRadius: BorderRadius.circular(8.0.r),
                    fillColor: AppColor.grey20,
                    keyboardType: TextInputType.number,
                    onCodeChanged: (String code) {
                      // handle validation or checks here
                    },
                    onSubmit: (String verificationCode) {
                      setState(() {
                        otpCode = verificationCode;
                      });
                    },
                  ),
                  SizedBox(height: 10.h),
                  //Resend Code Countdown
                  Container(
                    width: 343.w,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: BodytextMedium(
                        text:
                            'Resend on ${(countdown ~/ 60).toString().padLeft(2, '0')}: ${(countdown)}',
                        color: AppColor.primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.h),
          //Verify Email
          ButtonLarge(
            text: 'Verify Email',
            onPressed: () {
              setState(() {
                _submitLoginForm();
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResetPassword()),
              );
            },
            width: 343.w,
            height: 54.h,
            top: 16.h,
            bottom: 16.h,
            left: 32.w,
            right: 32.w,
          ),
        ],
      ),
    );
  }
}
