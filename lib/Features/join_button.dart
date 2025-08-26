import 'package:flutter/material.dart';
import 'package:mahi_beauty/Features/app_color.dart';

class JoinButton extends StatelessWidget {
  const JoinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.whiteColor,
        side: BorderSide(color: AppColor.whiteColor),
        fixedSize: Size(343, 54),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/google.png", width: 20, height: 20),
            SizedBox(width: 20),
            Text(
              "Join with Google",
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Manrope',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
