import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constant.dart';
import '../../model/message_page.dart';
import 'chat_screen.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KPrimaryColor,
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
        title: Text(
          "Group Chatting",
          style: appBarHeading,
        ),
        backgroundColor: KPrimaryColor,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: unReadList.length,
              itemBuilder: (context, index) {
                UnReadMessageModel read = unReadList[index];
                return UnReadMessage(
                  img: read.image,
                  time: read.time,
                  name: read.name,
                  message: read.message,
                );
              },
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: ReadList.length,
              itemBuilder: (context, index) {
                ReadMessageModel read = ReadList[index];
                return ReadMessage(
                  img: read.image,
                  time: read.time,
                  name: read.name,
                  message: read.message,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}

class UnReadMessage extends StatefulWidget {
  const UnReadMessage({
    this.img,
    this.name,
    this.message,
    this.time,
  });

  final img;
  final name;
  final message;
  final time;

  @override
  State<UnReadMessage> createState() => _UnReadMessageState();
}

class _UnReadMessageState extends State<UnReadMessage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ChatScreen(), transition: Transition.leftToRight);
      },
      child: Card(
        color: KBlackLightColor,
        margin: EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width * 0.85,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            widget.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    widget.name,
                    style: inputText,
                  ),
                  subtitle: Text(
                    widget.message,
                    style: WhiteText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    widget.time,
                    style: WhiteText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReadMessage extends StatefulWidget {
  const ReadMessage({
    this.img,
    this.name,
    this.message,
    this.time,
  });

  final img;
  final name;
  final message;
  final time;

  @override
  _ReadMessageState createState() => _ReadMessageState();
}

class _ReadMessageState extends State<ReadMessage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ChatScreen(), transition: Transition.leftToRight);
      },
      child: Card(
        color: KBlackLightColor,
        margin: EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width * 0.9,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            widget.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Container(
                      width: Get.width * 0.34,
                      child: Text(
                        widget.name,
                        style: inputText,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      )),
                  subtitle: Text(
                    widget.message,
                    style: greyTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    widget.time,
                    style: greyTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
