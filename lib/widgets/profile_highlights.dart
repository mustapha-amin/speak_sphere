import 'package:flutter/material.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

class ProfileHighlights extends StatelessWidget {
  const ProfileHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "1,107",
              style: kTextStyle(16, color: Colors.black, isBold: true),
            ),
            Text("Followers", style: kTextStyle(16, color: Colors.grey[600])),
          ],
        ),
        SizedBox(
          height: 40,
          width: 1,
          child: ColoredBox(color: Colors.grey[600]!),
        ),
        Column(
          children: [
            Text(
              "313",
              style: kTextStyle(16, color: Colors.black, isBold: true),
            ),
            Text("Following", style: kTextStyle(16, color: Colors.grey[600])),
          ],
        ),
        SizedBox(
          height: 40,
          width: 1,
          child: ColoredBox(color: Colors.grey[600]!),
        ),
        Column(
          children: [
            Text(
              "11,147",
              style: kTextStyle(16, color: Colors.black, isBold: true),
            ),
            Text("Lifetime XP", style: kTextStyle(16, color: Colors.grey[600])),
          ],
        ),
      ],
    ).padX(20).padY(15);
  }
}
