import 'package:flutter/material.dart';
import 'package:speak_sphere/constants/appcolors.dart';
import 'package:speak_sphere/screens/btm_nav_bar.dart';
import 'package:speak_sphere/utils/extensions.dart';
import 'package:speak_sphere/utils/textstyle.dart';

import '../constants/data.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  List<String> selected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 10,
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
                  value: .84,
                  color: Color(AppColors.brownColor),
                  borderRadius: BorderRadius.circular(20),
                  minHeight: 8,
                ),
              ),
              Text(
                "5 / 6",
                style: kTextStyle(13, color: Colors.black),
              ),
            ],
          ),
          Text.rich(
            TextSpan(
              text: "What interests you\n",
              style: kTextStyle(
                24,
                isBold: true,
                color: Color(AppColors.brownColor),
              ),
              children: [
                TextSpan(
                  text: "Select all that applies",
                  style: kTextStyle(
                    15,
                    color: Color(0xFF908A89),
                  ),
                )
              ],
            ),
          ),
          Wrap(
            runSpacing: 1,
            spacing: 1,
            children: [
              ...interests.map(
                (e) => FilterChip(
                  padding: const EdgeInsets.all(1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(
                      color: Color(0xFF650C01),
                      width: 0.5,
                    ),
                  ),
                  label: Text(
                    e,
                    style: kTextStyle(
                      12,
                      color: selected.contains(e) ? Colors.white : Colors.black,
                    ),
                  ),
                  avatar: null,
                  selected: selected.contains(e),
                  showCheckmark: false,
                  selectedColor: const Color(0xFFC67C72),
                  onSelected: (_) {
                    setState(() {
                      selected.contains(e)
                          ? selected.remove(e)
                          : selected.add(e);
                    });
                  },
                ).padX(3),
              ),
              FilterChip(
                label: const Text("Add other +"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(
                    color: Color(0xFF650C01),
                  ),
                ),
                onSelected: (_) {},
              )
            ],
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
                    context.push(BtmNavBar());
                  },
                  child: Text(
                    "Continue",
                    style: kTextStyle(20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Skip for now",
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
