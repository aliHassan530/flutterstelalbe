import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stellable/constant.dart';
import 'package:stellable/screen/login_screen/log_In_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: 'assets/Stella Astro Guy Logo Final 1.png',
        nextScreen: LogIn(),
        duration: 2000,
        splashIconSize: 276.h,
        animationDuration: Duration(
          seconds: 5,
        ),
        backgroundColor: KPrimaryColor,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
