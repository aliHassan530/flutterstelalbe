import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stellable/screen/create_video/create_video.dart';

import '../../../../constant.dart';
import '../../routes/routes.dart';

class OptionBottomSheet extends StatefulWidget {
  @override
  _OptionBottomSheetState createState() => _OptionBottomSheetState();
}

class _OptionBottomSheetState extends State<OptionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          color: KWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25,
            ),
            topRight: Radius.circular(
              25,
            ),
          )),
      height: 150,
      child: Material(
        child: Container(
            child: Column(
          children: [
            ListTile(
                leading: Image.asset(
                  "assets/Vector - 2022-04-06T122009.812.png",
                  height: 15,
                ),
                onTap: () {
                  Get.toNamed(Routes.live_performance_comment);
                },
                title: Text(
                  "Go Live",
                  style: greyText,
                )),
            ListTile(
                onTap: () {
                  Get.to(CreatVideo());
                },
                leading: Image.asset(
                  "assets/Vector - 2022-04-06T122019.145.png",
                  height: 15,
                ),
                title: Text(
                  "Create a video",
                  style: greyText,
                )),
          ],
        )),
      ),
    );
  }
}
