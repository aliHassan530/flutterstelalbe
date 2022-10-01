import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/routes/routes.dart';

import '../../constant.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                "assets/image 1 (2).png",
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 300,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 25),
                    width: Get.width * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                          trailing: Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: KWhiteColor),
                            child: Center(
                                child: Text(
                              "Follow",
                              style: greySmallText,
                              overflow: TextOverflow.ellipsis,
                            )),
                          ),
                        ),
                        Text(
                          "Hello this is my first video, thank you for wa ....",
                          style: WhiteText,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/Vector - 2022-04-10T110818.402.png",
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                                width: Get.width * 0.25,
                                child: Text(
                                  "United States",
                                  style: WhiteText,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              "assets/Vector - 2022-04-10T113504.968.png",
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                                width: Get.width * 0.25,
                                child: Text(
                                  "Filter - Sunset",
                                  style: WhiteText,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/like (3) 1.png",
                              height: 38.h,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: Get.width * 0.15,
                              child: Text(
                                "12.7K",
                                style: WhiteText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.message_page);
                              },
                              child: Image.asset(
                                "assets/Vector - 2022-04-10T113522.699.png",
                                height: 38.h,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: Get.width * 0.15,
                              child: Text(
                                "8.1K",
                                style: WhiteText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/Vector - 2022-04-10T113529.095.png",
                              height: 38.h,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: Get.width * 0.15,
                              child: Text(
                                "2.5K",
                                style: WhiteText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/Setting.png",
                          height: 30.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
