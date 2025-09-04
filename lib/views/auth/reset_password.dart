import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/CustomButton/button_large.dart';
import 'package:mahi_beauty/Features/forms/password_input.dart';
import 'package:mahi_beauty/views/auth/log_in.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

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
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading3(text: "New password,", color: AppColor.grey100),
                    SizedBox(height: 5.h),
                    BodytextMedium(
                      text:
                          "Now, you can create new password and \n confirm it below",
                      color: AppColor.grey80,
                    ),
                  ],
                ),
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
                  // New Password
                  SizedBox(height: 10.h),
                  PasswordInput(
                    controller: _passwordController,
                    hintText: 'New Password',
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'min 6 charactes';
                      }
                      return null;
                    },
                  ),
                  //Confirm Password field
                  SizedBox(height: 10.h),
                  PasswordInput(
                    controller: _passwordController,
                    hintText: 'Confirm Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your new password';
                      }
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.h),
          //SignIn Button
          ButtonLarge(
            text: 'Confirm New Password',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process new password confirmation
                setState(() {
                  _submitLoginForm();
                });
              }

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogIn()),
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
