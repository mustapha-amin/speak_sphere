import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: context.screenHeight * .15,
          ),
          SvgPicture.asset(
            generateImgPath('coding_bro'),
          ),
          Text.rich(
            TextSpan(
              text: "Coming Soon!\n",
              style: kTextStyle(32, color: Color(AppColors.brownColor)),
              children: [
                TextSpan(
                  text: "We'll be up soon, keep an eye \non us",
                  style: kTextStyle(
                    14,
                    color: Color(0xFF616161),
                  ),
                )
              ],
            ),
          )
        ],
      ).centralize(),
    );
  }
}
