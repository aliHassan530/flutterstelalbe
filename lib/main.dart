import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stellable/routes/routes.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        title: 'Flutter Demo yess change it ',
        theme: ThemeData(
            scaffoldBackgroundColor: KPrimaryColor,
            splashColor: KPrimaryColor,
            fontFamily: 'Roboto',
            inputDecorationTheme: const InputDecorationTheme(),
            primarySwatch: Colors.blue,
            accentColor: KPrimaryColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            cardTheme: CardTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                elevation: 1),
            scrollbarTheme: ScrollbarThemeData().copyWith(
              // interactive: true,
              isAlwaysShown: true,
              radius: const Radius.circular(10.0),
              thumbColor: MaterialStateProperty.all(Colors.black),
              thickness: MaterialStateProperty.all(5.0),
              minThumbLength: 50,
            )),
        initialRoute: Routes.splashscreen,
        // great one
        getPages: Routes.routes,
      ),
      designSize: const Size(426, 928),
    );
  }
}
