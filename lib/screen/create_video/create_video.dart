import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';

import '../bottom_sheet/filter_bottom_sheet.dart';

class CreatVideo extends StatefulWidget {
  @override
  _CreatVideoState createState() => _CreatVideoState();
}

class _CreatVideoState extends State<CreatVideo> {
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
                  Image.asset(
                    "assets/Ellipse 4.png",
                    height: 72.h,
                  ),
                  Image.asset(
                    "assets/Vector - 2022-04-09T101212.622.png",
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
