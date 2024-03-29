import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/data.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/screens/profile_screen.dart';
import 'package:speak_sphere/screens/resume_lessons.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/widgets/home_header.dart';
import 'package:speak_sphere/widgets/learning_widget.dart';

import '../utils/textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const Expanded(child: HomeHeader()),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () =>
                                    context.push(const ProfileScreen()),
                                child: Hero(
                                  tag: 'memoji',
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xFFFFBFB6),
                                    child: Image.asset(
                                      generateImgPath('profile', isSvg: false),
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Your\nLearning Sphere",
                              style: kTextStyle(
                                25,
                                color: Color(AppColors.brownColor),
                                isBold: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: SvgPicture.asset(
                                generateImgPath('grid'),
                                height: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ).padX(18),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate(
                [
                  ...learningList.map(
                    (mode) => GestureDetector(
                      onTap: mode.title! == "Speaking"
                          ? () => context.push(
                                const ResumeLessons(),
                              )
                          : null,
                      child: LearningWidget(
                        learning: mode,
                      ),
                    ),
                  )
                ],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
