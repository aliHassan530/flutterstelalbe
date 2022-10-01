import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:stellable/model/discovered.dart';
import 'package:stellable/screen/bottom_sheet/option_bottomSheet.dart';

import '../../constant.dart';
import '../../widgets/live_call_widget.dart';

class Discovered extends StatefulWidget {
  @override
  State<Discovered> createState() => _DiscoveredState();
}

class _DiscoveredState extends State<Discovered> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
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
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 3,
              itemCount: discoverList.length,
              mainAxisSpacing: 3.0,
              crossAxisSpacing: 3.0,
              itemBuilder: (context, index) {
                DiscoveredModel live = discover[index];
                return GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      OptionBottomSheet(),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      live.img,
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          ),
        ],
      ),
    );
  }
}
