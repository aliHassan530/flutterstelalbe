import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/routes/routes.dart';

import '../bottom_sheet/filter_bottom_sheet.dart';

class Recording extends StatefulWidget {
  @override
  _RecordingState createState() => _RecordingState();
}

class _RecordingState extends State<Recording> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            child: Image.asset(
              "assets/s2.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 148.h,
              color: KBlackLightColor.withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        FilterBottomSheet(),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/jordan-wozniak-xP_AGmeEa6s-unsplash 1.png",
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.editing);
                    },
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: KWhiteColor,
                          )),
                      child: Center(
                          child: Image.asset(
                        "assets/Rectangle 75 (1).png",
                        height: 25,
                      )),
                    ),
                  ),
                  Image.asset(
                    "assets/Vector - 2022-04-09T135857.393.png",
                    height: 26.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
