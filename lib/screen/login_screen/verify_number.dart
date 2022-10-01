import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stellable/screen/bottom_bar/bottom_bar.dart';
import 'package:stellable/widgets/button_widget.dart';

import '../../constant.dart';

class VerifyNumber extends StatefulWidget {
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  "assets/back (1).png",
                  height: 20.h,
                )),
          ],
        ),
        backgroundColor: KPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verifying Number",
          style: appBarHeading,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A code has been sent to\n +61 742815 via SMS",
              style: greyText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              child: Center(
                child: Form(
                  key: formKey,
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: const TextStyle(
                      color: KGreyDarkColor,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    enableActiveFill: true,
                    enablePinAutofill: true,
                    obscuringCharacter: '*',
                    pinTheme: PinTheme(
                      activeColor: KGreyDarkColor,
                      selectedColor: KGreyDarkColor,
                      errorBorderColor: KGreyDarkColor,
                      inactiveColor: KGreyDarkColor,
                      activeFillColor: KGreyDarkColor,
                      inactiveFillColor: KGreyDarkColor,
                      selectedFillColor: KGreyDarkColor,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 66,
                      fieldWidth: Get.width * 0.2,
                    ),
                    cursorColor: KWhiteColor,
                    textStyle: const TextStyle(
                        fontSize: 20, height: 1.6, color: KWhiteColor),
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        currentText = value;
                        if (value.length == 4) {
                          // Get.to(LogIn());
                        }
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      return true;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: KPrimaryColor,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          height: 80,
          child: Column(
            children: [
              Button(
                value: () {
                  Get.to(BottomBar(
                    val: 2,
                  ), transition: Transition.leftToRight);
                },
                clr: KSecondaryColor,
                txtColor: KWhiteColor,
                borderclr: KSecondaryColor,
                width: Get.width,
                txt: "Next",
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
