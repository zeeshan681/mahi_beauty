import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class CustomfieldInput extends StatefulWidget {
  final TextInputType keyboardType;
  final String hintText;
  final IconData prefixIcon;
  final FormFieldValidator<String> validator;
  const CustomfieldInput({
    super.key,
    required this.keyboardType,
    required this.hintText,
    required this.prefixIcon,
    required this.validator,
  });

  @override
  State<CustomfieldInput> createState() => _CustomfieldInputState();
}

class _CustomfieldInputState extends State<CustomfieldInput> {
  final _textController = TextEditingController();
  late FocusNode _textFocusNode;

  @override
  void initState() {
    super.initState();
    _textFocusNode = FocusNode();
    _textFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _textFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      width: 343.w,
      child: TextFormField(
        controller: _textController,
        focusNode: _textFocusNode,
        cursorColor: AppColor.primaryColor,
        keyboardType: widget.keyboardType,
        //validator
        validator: widget.validator,

        decoration: InputDecoration(
          hintText: widget.hintText,
          // filled
          filled: !_textFocusNode.hasFocus,
          fillColor: AppColor.grey20,

          //icon
          prefixIcon: Icon(
            widget.prefixIcon,
            size: 18,
            color: _textFocusNode.hasFocus
                ? AppColor.primaryColor
                : AppColor.grey60,
          ),

          // hint text style
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: _textFocusNode.hasFocus
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
            borderRadius: BorderRadius.circular(50.0.r),
            borderSide: BorderSide(color: AppColor.primaryColor, width: 2.w),
          ),
        ),
      ),
    );
  }
}
