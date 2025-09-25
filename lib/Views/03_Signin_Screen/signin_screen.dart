// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mahi_beauty/Core/custom_button2.dart';
// import 'package:mahi_beauty/Core/custom_textfield.dart';
// import 'package:mahi_beauty/Core/google_button.dart';

// class SigninScreen extends StatefulWidget {
//   const SigninScreen({super.key});

//   @override
//   State<SigninScreen> createState() => _SigninScreenState();
// }

// class _SigninScreenState extends State<SigninScreen> {
//   final _formkey = GlobalKey<FormState>();
//   final _emialController = TextEditingController();
//   final _passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: 170.h),
//               child: Text(
//                 "Welcome back,",
//                 style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Text(
//               "Glad to meet you again!, please login to use the app.",
//               style: TextStyle(fontSize: 15, color: Colors.black),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.h),
//               child: TextFormField(
//                 controller: _emialController,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   prefixIcon: Icon(Icons.email),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.r),
//                   ),
//                   focusedBorder: OutlineInputBorder(),
//                 ),
//               ),
//             ),

//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.h),
//               child: TextFormField(
//                 controller: _emialController,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   prefixIcon: Icon(Icons.email),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.r),
//                   ),
//                   focusedBorder: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             GoogleButton(onPressed: () {}),
//             CustomButton2(onNext: () {}, buttonText: "Sign in"),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahi_beauty/Core/custom_button2.dart';
import 'package:mahi_beauty/Core/custom_textfield.dart';
import 'package:mahi_beauty/Core/google_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>(); // Form key
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final FocusNode emailFocus = FocusNode();
  final FocusNode passwrordFocus = FocusNode();

  @override
  void initState() {
    emailFocus.addListener(() => setState(() {}));
    passwrordFocus.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    emailFocus.dispose();
    passwrordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 50.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.h),
                Text(
                  "Welcome back,",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Glad to meet you again!, please login to use the app.",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: _emailController,
                    focusNode: emailFocus,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: emailFocus.hasFocus
                          ? Colors.white
                          : Color(0xffF0F3F6),
                      prefixIcon: Icon(
                        Icons.email,
                        color: emailFocus.hasFocus
                            ? Color(0xff156778)
                            : Color.fromARGB(255, 159, 160, 160),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: emailFocus.hasFocus
                            ? Color(0xff156778)
                            : Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
