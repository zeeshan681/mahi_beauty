import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  late FocusNode _focusNode;

  void initiState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      focusNode: _focusNode,
      keyboardType: TextInputType.number,
      controller: TextEditingController(),
      decoration: InputDecoration(
        labelText: 'Mobile number',
        // border
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0.r)),
        //focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(color: AppColor.primaryColor, width: 2.w),
        ),
        //enabled border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0.r),
          borderSide: BorderSide(color: AppColor.grey20),
        ),
      ),

      initialCountryCode: 'US',
      onChanged: (phone) {},
      //validator
      validator: (phone) {
        if (phone == null || phone.number.isEmpty) {
          return 'Phone number is required';
        }
        return null;
      },
    );
  }
}
