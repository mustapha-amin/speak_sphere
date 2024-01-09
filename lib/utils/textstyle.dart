import 'package:flutter/material.dart';

kTextStyle(double? size, {Color? color, bool? isBold = false}) {
  return TextStyle(
    fontSize: size,
    color: color ?? Colors.white,
    fontWeight: isBold! ? FontWeight.w700 : FontWeight.normal,
    fontFamily: "JosefinSans",
  );
}
