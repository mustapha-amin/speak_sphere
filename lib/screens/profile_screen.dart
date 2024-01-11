import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
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
              const Icon(Icons.settings_outlined).padX(10),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
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
                        Container(
                          decoration: BoxDecoration(
                            color: Color(AppColors.brownColor),
                            shape: BoxShape.circle,
                          ),
                          width: 25,
                          height: 25,
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        )
                      ],
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
                      width: 43.w,
                      height: 6.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.edit,
                              size: 15,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Edit profile",
                              style: kTextStyle(13),
                            ),
                          ],
                        ).centralize(),
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
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate(
                [
                  ...challengeList.map(
                    (challenge) => ChallengeWidget(
                      challenge: challenge,
                    ),
                  )
                ],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
