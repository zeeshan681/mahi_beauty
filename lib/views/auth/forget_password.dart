import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/CustomButton/button_large.dart';
import 'package:mahi_beauty/Features/forms/customfield_input.dart';
import 'package:mahi_beauty/views/auth/email_verification.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();

  void _submitLoginForm() {
    if (_formKey.currentState!.validate()) {}
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
                  Heading3(text: "Forget password,", color: AppColor.grey100),
                  SizedBox(height: 5.h),
                  BodytextMedium(
                    text:
                        "Please type your email below and we will give you a\n OTP code.",
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
                  // Email
                  CustomfieldInput(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      if (!value.contains('@')) {
                        return 'Enter a valid Email';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 10.h),
                  //forget password
                  Container(
                    width: 343.w,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: BodytextMedium(
                        text: 'Use phone number?',
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
          //SignIn Button
          ButtonLarge(
            text: 'Send Code',
            onPressed: () {
              setState(() {
                _submitLoginForm();
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmailVerification()),
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
