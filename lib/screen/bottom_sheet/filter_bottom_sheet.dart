import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/model/filter_bottom_sheet.dart';
import 'package:stellable/routes/routes.dart';

class FilterBottomSheet extends StatefulWidget {
  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25,
            ),
            topRight: Radius.circular(
              25,
            ),
          )),
      height: Get.height * 0.45,
      child: Material(
        child: Container(
          color: KPrimaryColor,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 25.h),
                decoration: BoxDecoration(
                  color: KBlackLightColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: search,
                  style: inputText,
                  cursorColor: KWhiteColor,
                  decoration: InputDecoration(
                    hintText: "Sunset",
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
              GridView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 8,
                ),
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  FilterBottomSheetModel colorCompination = filter[index];
                  return Filter(
                    Img: colorCompination.filer,
                    filterName: colorCompination.filterName,
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Filter extends StatelessWidget {
  const Filter({
    this.Img,
    this.filterName,
  });

  final Img;
  final filterName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.recording);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        decoration: BoxDecoration(
            color: KBlackLightColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                Img,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              filterName,
              style: smallWhite,
            ),
          ],
        ),
      ),
    );
  }
}
