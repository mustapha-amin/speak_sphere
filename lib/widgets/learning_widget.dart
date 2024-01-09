import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/models/learn.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class LearningWidget extends StatelessWidget {
  final Learning learning;
  const LearningWidget({super.key, required this.learning});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .3,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(AppColors.brownColor),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(generateImgPath(learning.imgPath)),
          Text(
            learning.title!,
            style: kTextStyle(25, color: Colors.black, isBold: true),
          ),
          Text(
            "You completed ${(learning.completedVal! * 100).floor()} %",
            style: kTextStyle(
              13,
              color: Color(0xFF908A89),
            ),
          ),
          LinearProgressIndicator(
            value: learning.completedVal,
            color: Color(AppColors.brownColor),
            minHeight: 5,
            borderRadius: BorderRadius.circular(10),
          ).padY(5),
          const SizedBox(height: 14),
        ],
      ).padAll(8),
    );
  }
}
