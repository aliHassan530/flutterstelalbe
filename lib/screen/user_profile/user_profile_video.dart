import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/routes/routes.dart';
import 'package:stellable/screen/user_profile/video_play_tabbar.dart';
import 'package:stellable/widgets/button_widget.dart';

import '../../constant.dart';

class UserProfileVideo extends StatefulWidget {
  @override
  _UserProfileVideoState createState() => _UserProfileVideoState();
}

class _UserProfileVideoState extends State<UserProfileVideo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: KPrimaryColor,
                automaticallyImplyLeading: false,
                pinned: true,
                expandedHeight: 340,
                collapsedHeight: 60,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/image 41.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                width: Get.width * 0.6,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: Get.width * 0.5,
                                          child: Text(
                                            "Alviando Cendrasa",
                                            style: appBarHeading,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/verified (2).png",
                                          height: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "Hi i have talent on dancing, i live stream every sunday at 7 PM. So stay tuned",
                                      style: greyTextStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: KBlackLightColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: Get.width * 0.27,
                                  child: Column(
                                    children: [
                                      Text(
                                        "167K",
                                        style: inputText,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Text(
                                        "Followers",
                                        style: smallWhite,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width * 0.27,
                                  child: Column(
                                    children: [
                                      Text(
                                        "18",
                                        style: inputText,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Text(
                                        "Following",
                                        style: smallWhite,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width * 0.27,
                                  child: Column(
                                    children: [
                                      Text(
                                        "105",
                                        style: inputText,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Text(
                                        "Total Posts",
                                        style: smallWhite,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Button(
                            borderclr: KGreyDarkColor,
                            clr: KPrimaryColor,
                            value: () {
                              Get.toNamed(Routes.edit_profile);
                            },
                            txtColor: KGreyDarkColor,
                            txt: "Edit Profile And Settings",
                            width: Get.width,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size(0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      // color: KYellowColor,
                    ),
                    child: TabBar(
                      labelPadding: EdgeInsets.zero,
                      indicatorWeight: 2,
                      labelColor: KWhiteColor,
                      unselectedLabelColor: KBlackLightColor,
                      indicatorColor: KGreyDarkColor,
                      tabs: [
                        Image.asset(
                          "assets/Vector - 2022-04-06T122019.145.png",
                          height: 22,
                          color: KWhiteColor,
                        ),
                        Image.asset(
                          "assets/Vector - 2022-04-06T122009.812.png",
                          height: 22,
                          color: KWhiteColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            margin: EdgeInsets.only(top: 15),
            height: Get.height,
            child: TabBarView(
              children: [
                VideoPlayTabbar(),
                VideoPlayTabbar(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
