import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/utils/extensions.dart';

import '../constants/appcolors.dart';

class ResumeLessons extends StatefulWidget {
  const ResumeLessons({super.key});

  @override
  State<ResumeLessons> createState() => _ResumeLessonsState();
}

class _ResumeLessonsState extends State<ResumeLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 12,
                color: Colors.black,
              ),
              SizedBox(
                width: context.screenWidth * .9,
                child: LinearProgressIndicator(
                  value: .6,
                  color: Color(AppColors.brownColor),
                  borderRadius: BorderRadius.circular(20),
                  minHeight: 8,
                ),
              ),
            ],
          ),
          Text(
            "Speak this sentence",
          ),
          SvgPicture.asset(generateImgPath('speaker')),
          Text("Bonjour, Buchi, enchante"),
          SvgPicture.asset(generateImgPath('speak')),
        ],
      ),
    );
  }
}
