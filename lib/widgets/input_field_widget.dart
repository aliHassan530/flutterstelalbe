import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class InputField extends StatefulWidget {
  InputField({
    this.controller,
    this.hidden,
    this.hintText,
    this.img,
  });

  final controller;
  final hidden;
  final hintText;
  final img;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: KBlackLightColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: widget.hidden,
        controller: widget.controller,
        style: inputText,
        cursorColor: KWhiteColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: hintStyle,
          suffixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.img,
                height: 16.h,
              ),
            ],
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 19.h, horizontal: 15.w),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class EnterText extends StatefulWidget {
  EnterText({
    this.controller,
    this.hidden,
    this.hintText,
    this.clr,
  });

  final controller;
  final hidden;
  final hintText;
  final clr;

  @override
  State<EnterText> createState() => _EnterTextState();
}

class _EnterTextState extends State<EnterText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.clr,
        border: Border.all(color: KBlackLightColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: widget.hidden,
        controller: widget.controller,
        style: inputText,
        cursorColor: KWhiteColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: hintStyle,
          contentPadding:
              EdgeInsets.symmetric(vertical: 19.h, horizontal: 15.w),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
