import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/screens/setup.dart';
import 'package:speak_sphere/utils/extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 900), () {
      setState(() {
        isVisible = true;
      });
    });
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   Future.delayed(
    //       const Duration(seconds: 3), () => context.replaceWith(const SetupScreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          generateImgPath("splashbg", isSvg: false),
          width: context.screenWidth,
          height: context.screenWidth,
          fit: BoxFit.fitWidth,
        ),
        AnimatedOpacity(
          opacity: isVisible ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: Positioned(
            top: 20,
            child: SvgPicture.asset(
              generateImgPath('appname'),
            ),
          ),
        ),
      ],
    );
  }
}
