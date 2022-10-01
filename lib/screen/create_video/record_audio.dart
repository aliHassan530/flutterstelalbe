import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';

import '../../routes/routes.dart';

class RecordAudio extends StatefulWidget {
  @override
  _RecordAudioState createState() => _RecordAudioState();
}

class _RecordAudioState extends State<RecordAudio> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              width: Get.width,
              height: Get.height * 0.55,
              child: Image.asset(
                "assets/s2.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SetSpeedVideo(
                    txt: "0.25X",
                  ),
                  SetSpeedVideo(
                    txt: "0.50X",
                  ),
                  SetSpeedVideo(
                    txt: "1X",
                  ),
                  SetSpeedVideo(
                    txt: "1.50X",
                  ),
                  SetSpeedVideo(
                    txt: "2X",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width * 0.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "00:00",
                          style: WhiteText,
                        ),
                        Text(
                          "00:42",
                          style: WhiteText,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 57,
                        width: Get.width * 0.75,
                        decoration: BoxDecoration(
                            color: KWhiteColor,
                            border: Border(
                              top: BorderSide(
                                color: KWhiteColor,
                              ),
                              bottom: BorderSide(
                                color: KWhiteColor,
                              ),
                              left: BorderSide(
                                width: 10,
                                color: KWhiteColor,
                              ),
                              right: BorderSide(
                                width: 10,
                                color: KWhiteColor,
                              ),
                            )),
                        child: Image.asset(
                          "assets/s2.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: KBlackLightColor,
                        ),
                        height: 57,
                        width: 57,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/Vector - 2022-04-02T140814.874.png",
                                color: KWhiteColor,
                                height: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Text(
                              "Add Other\n People Video",
                              style: TextStyle(
                                color: KWhiteColor,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 6,
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Long Press to record audio",
                        style: WhiteText,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.details);
                        },
                        child: Center(
                          child: Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                color: KWhiteColor,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: KWhiteColor,
                                )),
                            child: Center(
                                child: Image.asset(
                              "assets/Ellipse 5 (2).png",
                              height: 25,
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SetSpeedVideo extends StatefulWidget {
  const SetSpeedVideo({
    this.txt,
  });

  final txt;

  @override
  State<SetSpeedVideo> createState() => _SetSpeedVideoState();
}

class _SetSpeedVideoState extends State<SetSpeedVideo> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          check = !check;
        });
      },
      child: Container(
        width: Get.width * 0.15,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: check ? KWhiteColor : KBlackLightColor,
        ),
        child: Center(
          child: Text(
            widget.txt,
            style: TextStyle(
              color: check ? KBlackLightColor : KWhiteColor,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
