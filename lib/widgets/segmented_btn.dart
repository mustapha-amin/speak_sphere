import 'package:flutter/material.dart';
import 'package:speak_sphere/utils/extensions.dart';

import '../constants/appcolors.dart';
import '../utils/textstyle.dart';

class SegmentedBttn extends StatefulWidget {
  const SegmentedBttn({super.key});

  @override
  State<SegmentedBttn> createState() => _SegmentedBttnState();
}

class _SegmentedBttnState extends State<SegmentedBttn> {
  bool audioIsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .85,
      height: context.screenHeight * .07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFF908A89),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              audioIsSelected ? null : setState(() => audioIsSelected = true);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              width: context.screenWidth * .4,
              height: context.screenHeight * .05,
              decoration: BoxDecoration(
                color: Color(
                    audioIsSelected ? AppColors.brownColor : AppColors.bgColor),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Audio lesson",
                style: kTextStyle(
                  18,
                  color:
                      audioIsSelected ? Colors.white : const Color(0xFF908A89),
                ),
              ).centralize(),
            ),
          ),
          GestureDetector(
            onTap: () => !audioIsSelected
                ? null
                : setState(() => audioIsSelected = false),
            child: Container(
              margin: const EdgeInsets.only(right: 5),
              width: context.screenWidth * .4,
              height: context.screenHeight * .05,
              decoration: BoxDecoration(
                color: Color(
                    audioIsSelected ? AppColors.bgColor : AppColors.brownColor),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Video lesson",
                style: kTextStyle(
                  16,
                  color:
                      audioIsSelected ? const Color(0xFF908A89) : Colors.white,
                ),
              ).centralize(),
            ),
          ),
        ],
      ),
    );
  }
}
