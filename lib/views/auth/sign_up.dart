import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/CustomText/bodytext_medium.dart';
import 'package:mahi_beauty/Features/CustomText/heading3.dart';
import 'package:mahi_beauty/Features/app_color.dart';
import 'package:mahi_beauty/Features/button_large.dart';
import 'package:mahi_beauty/Features/forms/customfield_input.dart';
import 'package:mahi_beauty/Features/forms/dividerline.dart';
import 'package:mahi_beauty/Features/forms/password_input.dart';
import 'package:mahi_beauty/Features/forms/phone_field.dart';
import 'package:mahi_beauty/Features/join_button.dart';
import 'package:mahi_beauty/Features/signin_text.dart';
import 'package:mahi_beauty/views/auth/log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          Padding(
            padding: EdgeInsets.only(top: 88.h, left: 16.w),
            child: SizedBox(
              height: 80.h,
              width: 340.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading3(text: "Create an account,", color: AppColor.grey100),
                  SizedBox(height: 5.h),
                  BodytextMedium(
                    text:
                        "Please type full information bellow and we can\n create your account.",
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
                  // Name
                  CustomfieldInput(
                    keyboardType: TextInputType.name,
                    hintText: 'Name',
                    prefixIcon: Icons.person,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  //Email Address
                  CustomfieldInput(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                    validator: (value) {
                      if (value == null) {
                        return 'Email is required';
                      }
                      if (!value.contains('@')) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  // Mobile Number
                  PhoneField(),
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
            text: 'Join Now',
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
            text1: "Alreadt have an account?",
            text2: "Sign In",
            color1: AppColor.grey80,
            color2: AppColor.primaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogIn()),
              );
            },
          ),
        ],
      ),
    );
  }
}
