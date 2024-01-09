import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/utils/extensions.dart';

import '../constants/image_paths.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF908A89),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            generateImgPath('flag'),
            width: 28,
          ),
          Row(
            children: [
              SvgPicture.asset(
                generateImgPath('fire'),
                width: 30,
              ),
              Text("2"),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                generateImgPath('target'),
                width: 28,
              ),
              Text("17")
            ],
          ),
          SvgPicture.asset(
            generateImgPath('notification'),
            width: 28,
          ),
        ],
      ).padX(10).padY(2),
    );
  }
}
