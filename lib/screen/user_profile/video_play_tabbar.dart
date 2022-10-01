import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stellable/model/profile_model.dart';


class VideoPlayTabbar extends StatefulWidget {
  @override
  _VideoPlayTabbarState createState() => _VideoPlayTabbarState();
}

class _VideoPlayTabbarState extends State<VideoPlayTabbar> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemCount: profileList.length,
      itemBuilder: (context, index) {
        ProFileModel pro=profile[index];
        return ClipRRect(
          child: Container(
            child: Image.asset(pro.img,fit: BoxFit.cover,height: 200.h,),
          ),
        );
      },
    );
  }
}
