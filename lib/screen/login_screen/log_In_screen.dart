import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/routes/routes.dart';
import 'package:stellable/widgets/button_widget.dart';
import 'package:stellable/widgets/input_field_widget.dart';

import '../bottom_bar/bottom_bar.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Stellable Name.png",
              height: 60.h,
              width: Get.width * 0.5,
            ),
            SizedBox(
              height: 50.h,
            ),
            InputField(
              controller: email,
              img: "assets/Vector - 2022-04-02T140814.874.png",
              hintText: "Email Address",
              hidden: false,
            ),
            SizedBox(
              height: 20.h,
            ),
            InputField(
              controller: passWord,
              img: "assets/Vector - 2022-04-02T140821.631.png",
              hintText: "Password",
              hidden: true,
            ),
            SizedBox(
              height: 70.h,
            ),
            Button(
              width: Get.width,
              value: () {
                Get.to(BottomBar(val: 1), transition: Transition.leftToRight);
                // Get.toNamed(Routes.main_app);
              },
              clr: KSecondaryColor,
              borderclr: KSecondaryColor,
              txt: "Login",
              txtColor: KWhiteColor,
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: Get.width * 0.23,
                    child: const Divider(
                      thickness: 2,
                      color: KGreyDarkColor,
                    )),
                Container(
                  width: Get.width * 0.35,
                  child: Text(
                    "or continue with",
                    style: inputText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                    width: Get.width * 0.23,
                    child: const Divider(
                      thickness: 2,
                      color: KGreyDarkColor,
                    )),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 43.h,
                  width: Get.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: KWhiteColor,
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/google (1).png",
                    height: 23.h,
                  )),
                ),
                Container(
                  height: 43.h,
                  width: Get.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: KWhiteColor,
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/facebook (1).png",
                    height: 23.h,
                  )),
                ),
                Container(
                  height: 43.h,
                  width: Get.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: KWhiteColor,
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/twitter 1.png",
                    height: 23.h,
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: KPrimaryColor,
        elevation: 0,
        child: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.register);
          },
          child: Container(
            height: 40.h,
            child: Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Don’t have an account?   ",
                    style: inputText,
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      color: KSecondaryColor,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
