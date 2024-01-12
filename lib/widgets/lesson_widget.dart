import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/models/lesson.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class LessonWidget extends StatelessWidget {
  final Lesson lesson;
  final int index;
  const LessonWidget({required this.lesson, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        ClipRRect(
          child: Image.asset(
            lesson.imgPath,
            height: 18.h,
          ),
        ),
        Positioned(
          left: 3.w,
          child: SizedBox(
            width: 60.w,
            child: Text.rich(
              TextSpan(
                text: '${lesson.title}\n',
                style: kTextStyle(23, isBold: true),
                children: [
                  TextSpan(
                    text: lesson.body,
                    style: kTextStyle(13),
                  ),
                ],
              ),
              maxLines: 4,
            ),
          ),
        ),
        Positioned(
          right: 3,
          bottom: 0,
          child: SvgPicture.asset(
            generateImgPath(
              switch (index) {
                0 => 'play1',
                1 => 'play2',
                2 => 'play3',
                _ => 'play4',
              },
            ),
            height: 40,
          ),
        )
      ],
    ).padX(13).padY(5);
  }
}
