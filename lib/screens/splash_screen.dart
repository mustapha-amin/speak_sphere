import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/utils/extensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      generateImgPath("splashbg", isSvg: false),
      width: context.screenWidth,
      height: context.screenWidth,
      fit: BoxFit.fitWidth,
    );
  }
}
