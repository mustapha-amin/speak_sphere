import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

    bool isSelected(String day) {
      return day == days[0] || day == days[1];
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.screenHeight * .2,
              ),
              SvgPicture.asset(generateImgPath('2')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "days streak! ",
                    style: kTextStyle(20, color: Colors.black),
                  ),
                  SvgPicture.asset(generateImgPath('fire')),
                ],
              ),
            ],
          ),
          Container(
            width: context.screenWidth * .9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...days.map(
                      (day) => Column(
                        children: [
                          Text(
                            day,
                            style: kTextStyle(
                              18,
                              color: isSelected(day)
                                  ? Color(AppColors.brownColor)
                                  : const Color(0xFF908A89),
                            ),
                          ),
                          SvgPicture.asset(
                            generateImgPath('wave'),
                            width: 15,
                            colorFilter: ColorFilter.mode(
                              isSelected(day)
                                  ? Color(AppColors.brownColor)
                                  : const Color(0xFF908A89),
                              BlendMode.srcIn,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "\nYou're on a roll, great job! Practice each day to keep up with your streak and earn XP points.",
                  style: kTextStyle(
                    12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ).padAll(20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: context.screenWidth * .85,
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
                    style: kTextStyle(20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Share",
                  style: kTextStyle(18, color: Color(AppColors.brownColor)),
                ),
              )
            ],
          ).centralize(),
        ],
      ).padX(7),
    );
  }
}
