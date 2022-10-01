import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/screen/main_app/main_app.dart';
import 'package:stellable/screen/user_profile/user_profile_video.dart';

import '../main_app/discovered.dart';

class BottomBar extends StatefulWidget {
  BottomBar({
    required this.val,
});
  final int val;
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List iconList = [
    MainApp(),
    Discovered(),
    UserProfileVideo(),
  ];

 late int currentindex =  widget.val as int ;

  start() {
    setState(() {
      currentindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      resizeToAvoidBottomInset: false,
      body: iconList[currentindex],
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        color: Colors.transparent,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 5.0,
        child: Container(
          height: 70,
          child: ClipRRect(
            child: BottomNavigationBar(
              backgroundColor: KPrimaryColor,
              type: BottomNavigationBarType.fixed,
              fixedColor: Color(0xff2398C3),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: 0,
              onTap: (index) {
                setState(() {
                 currentindex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  label: "",
                  icon: Image.asset(
                    "assets/Vector - 2022-04-06T154838.811.png",
                    height: 25,
                    color: currentindex == 0 ? KGreyDarkColor : KWhiteColor,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: KWhiteColor),
                    child: Image.asset(
                      "assets/add.png",
                      height: 25,
                      color: currentindex == 1
                          ? KBlackLightColor
                          : KBlackLightColor,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Image.asset(
                    "assets/Vector - 2022-04-02T140814.874.png",
                    height: 25,
                    color: currentindex == 2 ? KGreyDarkColor : KWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
