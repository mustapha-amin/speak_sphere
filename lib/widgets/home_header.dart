import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/screens/streaks_screen.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

import '../constants/image_paths.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF908A89),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            generateImgPath('flag'),
            width: 28,
          ),
          GestureDetector(
            onTap: () {
              context.push(const StreakScreen());
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  generateImgPath('fire'),
                  width: 28,
                ),
                Text(
                  "2",
                  style: kTextStyle(18, color: Color(AppColors.brownColor)),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                generateImgPath('target'),
                width: 28,
              ),
              Text(
                "17",
                style: kTextStyle(18, color: Color(AppColors.brownColor)),
              )
            ],
          ),
          SvgPicture.asset(
            generateImgPath('notification'),
            width: 25,
          ),
        ],
      ).padX(10).padY(2),
    );
  }
}
