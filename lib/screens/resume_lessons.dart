import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:sizer/sizer.dart';
import '../constants/appcolors.dart';
import '../utils/textstyle.dart';

class ResumeLessons extends StatefulWidget {
  const ResumeLessons({super.key});

  @override
  State<ResumeLessons> createState() => _ResumeLessonsState();
}

class _ResumeLessonsState extends State<ResumeLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: context.screenHeight * .08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 12,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: context.screenWidth * .8,
                        child: LinearProgressIndicator(
                          value: .6,
                          color: Color(AppColors.brownColor),
                          borderRadius: BorderRadius.circular(20),
                          minHeight: 8,
                          backgroundColor: const Color(0xFF908A89),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ).padX(10),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Speak this sentence",
                    style: kTextStyle(18, color: const Color(0xFF616161)),
                  ).padX(13),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        generateImgPath('speaker'),
                        height: 26.sp,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Bonjour, Buchi, enchante",
                        style: kTextStyle(16, color: const Color(0xFF616161)),
                      ),
                    ],
                  ).centralize(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Brilliant!",
                        style: kTextStyle(
                          20,
                          color: Color(0xFF616161),
                          isBold: true,
                        ),
                      ).padY(5),
                      Text(
                        "Meaning",
                        style: kTextStyle(
                          15,
                          color: Color(0xFF616161),
                        ),
                      ),
                      Text(
                        "Hello, Buchi, nice to meet you",
                        style: kTextStyle(
                          15,
                          color: Color(0xFF616161),
                        ),
                      ).padY(4),
                    ],
                  ).padX(13),
                  SizedBox(
                      width: context.screenWidth,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          "Continue",
                          style: kTextStyle(18),
                        ),
                      ).padX(13)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Share",
                      style: kTextStyle(18, color: Color(AppColors.brownColor)),
                    ),
                  ).centralize()
                ],
              ),
            ],
          ).padX(8),
          SvgPicture.asset(
            generateImgPath('mic'),
            height: 50,
          ),
        ],
      ),
    );
  }
}
