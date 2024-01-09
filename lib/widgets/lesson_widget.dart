import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/models/lesson.dart';

class LessonWidget extends StatelessWidget {
  final Lesson lesson;
  const LessonWidget({required this.lesson, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        SvgPicture.asset(lesson.imgPath),
        Text.rich(
          TextSpan(
            text: '${lesson.title}\n\n',
            children: [TextSpan(text: lesson.body)],
          ),
        )
      ],
    );
  }
}
