import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/constants/image_paths.dart';
import 'package:speak_sphere/screens/coming_soon.dart';
import 'package:speak_sphere/screens/home.dart';
import 'package:speak_sphere/screens/lessons.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({super.key});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeScreen(),
          LessonsScreen(),
          ComingSoon(),
          ComingSoon(),
          ComingSoon(),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Color(AppColors.bgColor),
            selectedItemColor: Color(AppColors.brownColor),
            unselectedItemColor: Colors.grey[900],
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedLabelStyle: kTextStyle(15),
            unselectedLabelStyle: kTextStyle(12),
            onTap: (newIndex) {
              setState(() {
                currentIndex = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  generateImgPath("home"),
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    currentIndex == 0
                        ? Color(AppColors.brownColor)
                        : Colors.grey[600]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  generateImgPath("lessons"),
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    currentIndex == 1
                        ? Color(AppColors.brownColor)
                        : Colors.grey[600]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Lessons",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  generateImgPath("exercises"),
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    currentIndex == 2
                        ? Color(AppColors.brownColor)
                        : Colors.grey[600]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Exercises",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  generateImgPath("games"),
                  colorFilter: ColorFilter.mode(
                    currentIndex == 3
                        ? Color(AppColors.brownColor)
                        : Colors.grey[600]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Games",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  generateImgPath("chats"),
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    currentIndex == 4
                        ? Color(AppColors.brownColor)
                        : Colors.grey[600]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Chats",
              ),
            ],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            left: switch (currentIndex) {
              1 => context.screenWidth * .25,
              2 => context.screenWidth * .45,
              3 => context.screenWidth * .65,
              4 => context.screenWidth * .85,
              _ => context.screenWidth * .05,
            },
            child: SizedBox(
              width: context.screenWidth * .1,
              height: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: ColoredBox(
                  color: Color(AppColors.brownColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
