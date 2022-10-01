import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/routes/routes.dart';

class LiveCall extends StatefulWidget {
  const LiveCall({
    this.video,
    this.profile,
    this.name,
    this.liveperson,
  });

  final video;
  final profile;
  final name;
  final liveperson;

  @override
  State<LiveCall> createState() => _LiveCallState();
}

class _LiveCallState extends State<LiveCall> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.liveperformance);
      },
      child: Stack(
        children: [
          Container(
            height: 300.h,
            width: 251.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.video,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: 300.h,
            width: 260.w,
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: KRedColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    "Live",
                    style: smallWhite,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                      height: 32,
                      width: 32,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            widget.profile,
                            fit: BoxFit.cover,
                          ))),
                  minLeadingWidth: -4,
                  title: Text(
                    widget.name,
                    style: smallWhite,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Container(
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
                            widget.liveperson,
                            style: greySmallText,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SelectOptionAppbar extends StatelessWidget {
  const SelectOptionAppbar({
    this.img,
  });

  final img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: KBlackLightColor,
      ),
      height: 35,
      width: 35,
      child: Center(
        child: Image.asset(
          img,
          height: 15,
        ),
      ),
    );
  }
}
