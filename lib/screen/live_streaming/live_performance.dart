import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/model/live_performance_model.dart';

import '../../constant.dart';

class LivePerformance extends StatefulWidget {
  @override
  _LivePerformanceState createState() => _LivePerformanceState();
}

class _LivePerformanceState extends State<LivePerformance> {
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
              fit: BoxFit.fill,
            ),
          ),
          Stack(
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                leading: Container(
                    height: 45,
                    width: 45,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/image 2 (1).png",
                          fit: BoxFit.cover,
                        ))),
                title: Row(
                  children: [
                    Text(
                      "@fannyharsandi",
                      style: smallWhite,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Image.asset(
                      "assets/verified (2).png",
                      height: 13,
                    )
                  ],
                ),
                trailing: Container(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: KRedColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          "Live",
                          style: smallWhite,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          color: KWhiteColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/Vector - 2022-04-02T140821.631.png",
                              height: 7,
                            ),
                            Container(
                              width: 25,
                              child: Text(
                                "1.5K",
                                style: greySmallText,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/Vector - 2022-04-06T130359.030.png",
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  height: Get.height * 0.45,
                  child: Column(
                    children: [
                      Container(
                        height: 320.h,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          scrollDirection: Axis.vertical,
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: performList.length,
                          itemBuilder: (context, index) {
                            LivePerFormanceModel lives = perform[index];
                            return CommentLive(
                              name: lives.name,
                              msg: lives.comment,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(
                        bottom: 20, top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: KWhiteColor,
                                width: 2,
                              )),
                          width: Get.width * 0.7,
                          child: TextField(
                            // controller: msg,
                            style: inputText,
                            cursorColor: KWhiteColor,
                            decoration: InputDecoration(
                                hintText: "Chat with fannyharsandi",
                                hintStyle: inputText,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                border: InputBorder.none,
                                suffixIcon: Container(
                                    height: 10,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/Vector - 2022-04-06T102142.679.png",
                                          height: 20,
                                        ),
                                      ],
                                    ))),
                          ),
                        ),
                        Image.asset(
                          "assets/like (3) 1.png",
                          height: 50.h,
                        )
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class CommentLive extends StatelessWidget {
  const CommentLive({
    this.name,
    this.msg,
  });

  final name;
  final msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      decoration: BoxDecoration(
        color: KBlackLightColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: Get.width * 0.25,
              child: Text(
                name,
                style: greyTextStyle,
              )),
          Expanded(
              child: Text(
            msg,
            style: WhiteText,
          )),
        ],
      ),
    );
  }
}
