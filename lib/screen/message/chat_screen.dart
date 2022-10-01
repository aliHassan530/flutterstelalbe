import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constant.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController msg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        elevation: 1,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    "assets/back (1).png",
                    height: 13,
                  )),
            ),
          ],
        ),
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/image 42.png"),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.5,
                  child: Text(
                    "Big Family Group".toUpperCase(),
                    style: WhiteText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Container(
                  width: Get.width * 0.5,
                  child: Text(
                    "Sarry, Alvin, Gilbert, Indra, Alex, ...".toUpperCase(),
                    style: smallWhite,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Setting.png",
                    height: 25,
                  ),
                ],
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.84,
            color: KPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListView(
              children: [
                Column(
                  children: [
                    LeftBubble(
                      clr: KRedColor,
                      msg:
                          "Hello, what are you guys doing today ?i !!! How are you?",
                      name: "Sarry",
                    ),
                    LeftBubble(
                      clr: KSecondaryColor,
                      msg:
                          "Hi, i’m playing football with my friends. Come to join",
                      name: "Alex",
                    ),
                    LeftBubble(
                      clr: KYellowColor,
                      msg: "I’ll join you @Alex",
                      name: "Alvin",
                    ),
                    RightBubble(
                      msg: "How many people are there ?",
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              color: KPrimaryColor,
              margin: EdgeInsets.zero,
              elevation: 5,
              child: Container(
                  height: 60,
                  margin:
                      EdgeInsets.only(bottom: 30, top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width * 0.75,
                        decoration: BoxDecoration(
                          color: KBlackLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          // controller: widget.controller,
                          style: inputText,
                          cursorColor: KWhiteColor,
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              width: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/Vector - 2022-04-10T123433.438.png",
                                    height: 18.h,
                                  ),
                                  Image.asset(
                                    "assets/Vector - 2022-04-10T123440.100.png",
                                    height: 18.h,
                                  ),
                                ],
                              ),
                            ),
                            hintText: "Type a message ....",
                            hintStyle: greyTextStyle,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 18.h, horizontal: 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: Get.width * 0.15,
                        decoration: BoxDecoration(
                          color: KBlackLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Image.asset(
                          "assets/Vector - 2022-04-10T123856.912.png",
                          height: 15.h,
                        )),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class LeftBubble extends StatefulWidget {
  var msg;
  var name;
  var emoji;
  var clr;

  LeftBubble({
    this.msg,
    this.name,
    this.emoji,
    this.clr,
  });

  @override
  _LeftBubbleState createState() => _LeftBubbleState();
}

class _LeftBubbleState extends State<LeftBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.only(top: 30),
            child: Container(
              width: Get.width * 0.7,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: const BoxDecoration(
                color: KGreyDarkColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 14,
                              color: widget.clr,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            widget.msg,
                            style: TextStyle(
                              fontSize: 14,
                              color: KWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RightBubble extends StatefulWidget {
  var msg;
  var emoji;
  var time;

  RightBubble({
    this.msg,
    this.emoji,
    this.time,
  });

  @override
  _RightBubbleState createState() => _RightBubbleState();
}

class _RightBubbleState extends State<RightBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Card(
            color: KSecondaryColor,
            margin: const EdgeInsets.only(top: 30),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: BoxDecoration(
                color: KSecondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Container(
                width: Get.width * 0.61,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        widget.msg,
                        style: TextStyle(
                          fontSize: 14,
                          color: KWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
