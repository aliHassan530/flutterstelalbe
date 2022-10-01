import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/controller/register_controller.dart';
import 'package:stellable/routes/routes.dart';
import 'package:stellable/widgets/button_widget.dart';

import '../../constant.dart';
import '../../widgets/input_field_widget.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  RegisterController value = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create Account",
              style: mainHeadingStyle,
            ),
            SizedBox(
              height: 45.h,
            ),
            EnterText(
              controller: userName,
              hintText: "Username",
              hidden: false,
              clr: KBlackLightColor,
            ),
            SizedBox(
              height: 30.h,
            ),
            EnterText(
              controller: email,
              hintText: "Email Address",
              hidden: false,
              clr: KBlackLightColor,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: KBlackLightColor,
                borderRadius: BorderRadius.circular(5),
              ),
              width: Get.width,
              child: Center(
                child: TextField(
                  style: hintStyle,
                  cursorColor: KWhiteColor,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: hintStyle,
                    contentPadding: EdgeInsets.only(top: 10.h),
                    border: InputBorder.none,
                    prefix: Container(
                      width: 90,
                      child: CountryCodePicker(
                        textStyle: hintStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            EnterText(
              controller: password,
              hintText: "Password",
              hidden: true,
              clr: KBlackLightColor,
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                value.changeStatus();
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GetBuilder<RegisterController>(
                      init: RegisterController(),
                      builder: (controller) {
                        return Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: value.pressedBool
                                ? KPrimaryColor
                                : KSecondaryColor,
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: KGreyDarkColor, width: 2),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 12,
                            color: value.pressedBool
                                ? KPrimaryColor
                                : KPrimaryColor,
                          ),
                        );
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: Get.width * 0.76,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "I agree with the  ",
                          style: WhiteText,
                        ),
                        TextSpan(
                          text: "Term and Conditions",
                          style: textStyleBlue,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(    
              onTap: () {
                value.privacyStatus();
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GetBuilder<RegisterController>(
                      init: RegisterController(),
                      builder: (controller) {
                        return Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color:
                                value.privacy ? KPrimaryColor : KSecondaryColor,
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: KGreyDarkColor, width: 2),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 12,
                            color:
                                value.privacy ? KPrimaryColor : KPrimaryColor,
                          ),
                        );
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: Get.width * 0.76,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "I agree with Nurse Binder  ",
                          style: WhiteText,
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: textStyleBlue,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Button(
              txt: "Sign Up",
              borderclr: KSecondaryColor,
              width: Get.width,
              txtColor: KWhiteColor,
              clr: KSecondaryColor,
              value: () {
                Get.toNamed(Routes.verify_number);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: KPrimaryColor,
        elevation: 0,
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: 40.h,
            child: Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Already have an account ?    ",
                    style: inputText,
                  ),
                  TextSpan(
                    text: "Login",
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
