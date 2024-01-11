import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

TextStyle kTextStyle(double? size, {Color? color, bool? isBold = false}) {
  return TextStyle(
    fontSize: size!.sp,
    color: color ?? Colors.white,
    fontWeight: isBold! ? FontWeight.w700 : FontWeight.normal,
    fontFamily: "JosefinSans",
  );
}
