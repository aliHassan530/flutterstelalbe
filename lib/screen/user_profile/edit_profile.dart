import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/routes/routes.dart';
import 'package:stellable/widgets/button_widget.dart';
import 'package:stellable/widgets/input_field_widget.dart';

import '../../constant.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController discription = TextEditingController();

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
            "Edit Profile",
            style: appBarHeading,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/image 41.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        width: Get.width * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.width * 0.5,
                              child: Text(
                                "Profile Picture",
                                style: appBarHeading,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "File Format: JPEG, PNG, GIF (Max Size 1080x1080, Max 20 Mb)",
                              style: WhiteText,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Name",
                    style: greyTextStyle,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  EnterText(
                    controller: name,
                    clr: KPrimaryColor,
                    hidden: false,
                    hintText: "",
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Description",
                    style: greyTextStyle,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  EnterText(
                    controller: discription,
                    hidden: false,
                    hintText: "",
                    clr: KPrimaryColor,
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
                    clr: KPrimaryColor,
                    borderclr: KBlackLightColor,
                    width: Get.width,
                    txt: "Advanced Setting",
                    txtColor: KGreyDarkColor,
                    value: () {
                      Get.toNamed(Routes.advance_edit_profile);
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
