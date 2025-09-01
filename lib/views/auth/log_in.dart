import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/button_large.dart';
import 'package:mahi_beauty/Features/forms/customfield_input.dart';
import 'package:mahi_beauty/Features/forms/dividerline.dart';
import 'package:mahi_beauty/Features/forms/password_input.dart';
import 'package:mahi_beauty/Features/join_button.dart';
import 'package:mahi_beauty/Features/signin_text.dart';
import 'package:mahi_beauty/views/auth/forget_password.dart';
import 'package:mahi_beauty/views/auth/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading3(text: "Welcome back,", color: AppColor.grey100),
                  SizedBox(height: 5.h),
                  BodytextMedium(
                    text:
                        "Glad to meet you again!, please login to use the app.",
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
                  //Password
                  SizedBox(height: 10.h),
                  PasswordInput(
                    controller: _passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'min 6 charactes';
                      }
                      return null;
                    },
                  ),
                  //forget password
                  Container(
                    width: 343.w,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: BodytextMedium(
                        text: 'Forget Password?',
                        color: AppColor.primaryColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.h),
          //SignIn Button
          ButtonLarge(
            text: 'Sign In',
            onPressed: () {
              setState(() {
                _submitLoginForm();
              });
            },
            width: 343.w,
            height: 54.h,
            top: 16.h,
            bottom: 16.h,
            left: 32.w,
            right: 32.w,
          ),
          SizedBox(height: 25.h),
          //OR
          Dividerline(),
          SizedBox(height: 25.h),
          //Join with google
          JoinButton(),
          SizedBox(height: 25.h),
          // join now
          SignInText(
            text1: "Don't have an account?",
            text2: "Join Now",
            color1: AppColor.grey80,
            color2: AppColor.primaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          ),
        ],
      ),
    );
  }
}
