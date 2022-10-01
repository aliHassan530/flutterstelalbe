import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/routes/routes.dart';

import '../../constant.dart';
import '../../widgets/button_widget.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "Add Details",
            style: appBarHeading,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.3,
                    height: 200.h,
                    child: Image.asset(
                      "assets/s2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Description",
                          style: WhiteText,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Hello this is my first video, thank you for watching",
                          style: inputText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          "#firstvideo #funn",
                          style: BlueText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                leading: Column(
                  children: [
                    Container(
                        height: 45,
                        width: 45,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/image 2 (1).png",
                              fit: BoxFit.cover,
                            ))),
                  ],
                ),
                minLeadingWidth: -4,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Container(
                      width: Get.width * 0.35,
                      child: Text(
                        "@fannyharsandi",
                        style: inputText,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Image.asset(
                      "assets/verified (2).png",
                      height: 15,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: KBlackLightColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: KGreyDarkColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/Vector - 2022-04-10T110818.402.png",
                            height: 15.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    "Add Location",
                    style: WhiteText,
                  ),
                  minLeadingWidth: -4,
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
                    Get.toNamed(Routes.video);
                  },
                  clr: KSecondaryColor,
                  txtColor: KWhiteColor,
                  borderclr: KSecondaryColor,
                  width: Get.width,
                  txt: "Upload",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
