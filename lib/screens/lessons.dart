import 'package:flutter/material.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/data.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';
import 'package:speak_sphere/widgets/home_header.dart';
import 'package:speak_sphere/widgets/lesson_widget.dart';
import 'package:speak_sphere/widgets/segmented_btn.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const HomeHeader().padX(40),
          const SizedBox(
            height: 50,
          ),
          const SegmentedBttn(),
          ...lessonList.map(
            (lesson) => LessonWidget(
              lesson: lesson,
            ),
          )
        ],
      ),
    );
  }
}
