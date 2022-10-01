import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/model/live_call_model.dart';
import 'package:stellable/model/top_channel_model.dart';

import '../../routes/routes.dart';
import '../../widgets/live_call_widget.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: KPrimaryColor,
        elevation: 0,
        title: Image.asset(
          "assets/Stellable Name.png",
          width: Get.width * 0.3,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                SelectOptionAppbar(
                  img: "assets/Vector - 2022-04-04T193610.654.png",
                ),
                SelectOptionAppbar(
                  img: "assets/group_work.png",
                ),
                SelectOptionAppbar(
                  img: "assets/explore.png",
                ),
              ],
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            decoration: BoxDecoration(
              color: KBlackLightColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: search,
              style: inputText,
              cursorColor: KWhiteColor,
              decoration: InputDecoration(
                hintText: "Dancing Performance",
                hintStyle: hintStyle,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Vector - 2022-04-04T194020.793.png",
                      height: 16.h,
                    ),
                  ],
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 19.h, horizontal: 15.w),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                "Top Live Video",
                style: appBarHeading,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 320.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 7),
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: liveCall.length,
                itemBuilder: (context, index) {
                  LiveCallModel live = liveCallList[index];
                  return LiveCall(
                    video: live.video,
                    name: live.name,
                    profile: live.profile,
                    liveperson: live.livePerson,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                "Recommended For You",
                style: appBarHeading,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 320.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 7),
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: recomandedList.length,
                itemBuilder: (context, index) {
                  LiveCallRecomandedModel live = recomanded[index];
                  return LiveCall(
                    video: live.video,
                    profile: live.profile,
                    name: live.name,
                    liveperson: live.livePerson,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                "Top Channel",
                style: appBarHeading,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 7),
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: topChannelList.length,
              itemBuilder: (context, index) {
                TopChannelModel top = topChannel[index];
                return TopChannel(
                  subtitle: top.profile,
                  name: top.name,
                  profile: top.profile,
                  fellow: top.fellow,
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class TopChannel extends StatelessWidget {
  const TopChannel({
    this.name,
    this.profile,
    this.subtitle,
    this.fellow,
  });

  final profile;
  final name;
  final subtitle;
  final fellow;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed(Routes.user_profile_other);
      },
      leading: Column(
        children: [
          Container(
              height: 55,
              width: 55,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    profile,
                    fit: BoxFit.cover,
                  ))),
        ],
      ),
      minLeadingWidth: -4,
      title: Row(
        children: [
          Text(
            name,
            style: inputText,
          ),
          // Image.asset("assets/verified (2).png",height: 10,)
        ],
      ),
      subtitle: Text(
        subtitle,
        style: greySmallText,
      ),
      trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          decoration: BoxDecoration(
            color: KBlackLightColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            fellow,
            style: smallWhite,
          )),
    );
  }
}
