import 'package:flutter/material.dart';
import 'package:speak_sphere/models/challenge.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class ChallengeWidget extends StatelessWidget {
  final Challenge challenge;
  const ChallengeWidget({required this.challenge, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .45,
      height: context.screenHeight * .05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 0.5,
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          challenge.icon!,
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                challenge.title!,
                style: kTextStyle(18, color: Colors.black),
              ),
              Text(
                challenge.subtitle!,
                style: kTextStyle(14, color: Colors.grey, isBold: true),
              ),
            ],
          ),
        ],
      ).padAll(7),
    );
  }
}
