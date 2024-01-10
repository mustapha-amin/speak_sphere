import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/data.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';
import 'package:speak_sphere/widgets/challenge_widget.dart';

import '../widgets/profile_highlights.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color(AppColors.bgColor),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 15,
        ),
        title: Text(
          "Profile",
          style: kTextStyle(20, color: Colors.black, isBold: true),
        ),
        centerTitle: true,
        actions: [
          const Icon(Icons.settings_outlined).padX(5),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Hero(
                  tag: 'memoji',
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: const Color(0xFFFFBFB6),
                    child: Image.asset(
                      generateImgPath('profile', isSvg: false),
                      height: 130,
                    ),
                  ),
                ),
                Text(
                  "Buchi Allwell",
                  style: kTextStyle(30, color: Colors.black, isBold: true),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 12,
                      color: Colors.grey[600],
                    ),
                    Text(
                      "Joined since 30 Dec 2023",
                      style: kTextStyle(12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const ProfileHighlights(),
                SizedBox(
                  width: context.screenWidth * .43,
                  height: context.screenHeight * .06,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.edit,
                          size: 15,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Edit profile",
                          style: kTextStyle(14),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Your statistics",
                      style: kTextStyle(18, color: Colors.black),
                    ),
                    Icon(
                      Icons.bar_chart,
                      color: Color(AppColors.brownColor),
                      size: 16,
                    ),
                  ],
                ).padX(15),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: context.screenHeight * .4,
              child: GridView(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
                children: [
                  ...challengeList.map(
                    (challenge) => ChallengeWidget(
                      challenge: challenge,
                    ),
                  )
                ],
              ).padX(10),
            )
          ],
        ),
      ),
    );
  }
}