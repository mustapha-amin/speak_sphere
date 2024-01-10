import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: Image.asset(
            lesson.imgPath,
            width: context.screenWidth,
            height: context.screenHeight * .2,
            color: Colors.black.withOpacity(0.2),
            colorBlendMode: BlendMode.overlay,
          ),
        ),
        Text.rich(
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
        ).padX(10),
        Positioned(
          right: 3,
          bottom: 1,
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
        ),
      ],
    ).padX(13).padY(10);
  }
}
