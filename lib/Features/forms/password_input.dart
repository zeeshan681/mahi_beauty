import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/app_color.dart';

// ignore: must_be_immutable
class PasswordInput extends StatefulWidget {
  final String hintText;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;
  const PasswordInput({
    super.key,
    required this.hintText,
    required this.validator,
    required this.controller,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  late FocusNode _passwordFocusNode;
  bool _obsurePassword = true;

  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      width: 343.w,
      child: TextFormField(
        controller: widget.controller,
        focusNode: _passwordFocusNode,
        obscureText: _obsurePassword,
        cursorColor: AppColor.primaryColor,
        keyboardType: TextInputType.text,
        //
        validator: widget.validator,

        decoration: InputDecoration(
          hintText: widget.hintText,
          // filled
          filled: !_passwordFocusNode.hasFocus,
          fillColor: AppColor.grey20,

          //icon
          prefixIcon: Icon(
            Icons.lock,
            size: 18,
            color: _passwordFocusNode.hasFocus
                ? AppColor.primaryColor
                : AppColor.grey60,
          ),

          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obsurePassword = !_obsurePassword;
              });
            },
            icon: Icon(
              _obsurePassword ? Icons.visibility : Icons.visibility_off,
              size: 18,
              color: _passwordFocusNode.hasFocus
                  ? AppColor.primaryColor
                  : AppColor.grey60,
            ),
          ),

          // hint text style
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: _passwordFocusNode.hasFocus
                ? AppColor.primaryColor
                : AppColor.grey60,
            fontFamily: 'NunitoSans',
          ),
          //border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0.r),
          ),
          //enable border
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0.r),
            borderSide: BorderSide(color: AppColor.grey20),
          ),
          // focus border
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: AppColor.primaryColor, width: 2.w),
          ),
        ),
      ),
    );
  }
}
