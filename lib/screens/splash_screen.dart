import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/screens/setup.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

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
     Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isVisible = true;
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(AssetImage(generateImgPath('splashbg', isSvg: false)), context);
      Future.delayed(
          const Duration(seconds: 3), () => context.replaceWith(const SetupScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.screenHeight,
        width: context.screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              generateImgPath(
                'splashbg',
                isSvg: false,
              ),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                AnimatedOpacity(
                  opacity: isVisible ? 1 : 0,
                  duration: const Duration(milliseconds: 800),
                  child: SvgPicture.asset(
                    generateImgPath('appname'),
                    width: context.screenWidth * .75,
                  ).padY(90),
                ),
                Positioned(
                  left: 38,
                  top: 130,
                  child: AnimatedOpacity(
                    opacity: isVisible ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "...speak the world",
                          style: kTextStyle(17).copyWith(
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Color(AppColors.brownColor),
                          ),
                        ),
                        Text("...speak the world", style: kTextStyle(17))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
