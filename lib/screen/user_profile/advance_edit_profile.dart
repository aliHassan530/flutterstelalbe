import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/widgets/button_widget.dart';

import '../../constant.dart';
import '../../widgets/input_field_widget.dart';

class AdvanceEditProfile extends StatefulWidget {
  @override
  _AdvanceEditProfileState createState() => _AdvanceEditProfileState();
}

class _AdvanceEditProfileState extends State<AdvanceEditProfile> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          "Advanced Setting",
          style: appBarHeading,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Email",
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                EnterText(
                  controller: userName,
                  hintText: "",
                  hidden: false,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Phone Number",
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: KBlackLightColor),
                    color: KPrimaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: Get.width,
                  child: Center(
                    child: TextField(
                      style: hintStyle,
                      cursorColor: KWhiteColor,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "",
                        hintStyle: hintStyle,
                        contentPadding: EdgeInsets.only(top: 10),
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
                Text(
                  "Password",
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                EnterText(
                  controller: password,
                  hintText: "",
                  hidden: true,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Button(
                  borderclr: KSecondaryColor,
                  clr: KSecondaryColor,
                  width: Get.width,
                  txt: "Save",
                  txtColor: KWhiteColor,
                  value: () {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                Button(
                  clr: KRedColor,
                  borderclr: KBlackLightColor,
                  width: Get.width,
                  txt: "Delete Account",
                  txtColor: KWhiteColor,
                  value: () {},
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
