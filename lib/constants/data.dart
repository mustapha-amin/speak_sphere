import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_sphere/constants/image_paths.dart';

import '../models/challenge.dart';
import '../models/learn.dart';
import '../models/lesson.dart';

List<String> interests = [
  "Studies",
  "Reading",
  "Technologies",
  "Travel",
  "Psychology",
  "Gaming",
  "TV/Movies",
  "Sports",
  "Languages",
  "Fashion",
  "Fitness",
  "Pets",
  "Food",
  "Climate Change",
  "Self-Care",
  "Work life",
  "Culture",
  "Design",
  "Sociology",
  "Music",
  "Outdoor",
  "Networking",
  "Romance",
  "Shopping",
  "Sight-seeing",
  "Add other +"
];

List<Learning> learningList = [
  Learning(imgPath: "book", title: "Reading", completedVal: .5),
  Learning(imgPath: "headset", title: "Listening", completedVal: .5),
  Learning(imgPath: "write", title: "Writing", completedVal: .7),
  Learning(imgPath: "speak", title: "Speaking", completedVal: .25),
  Learning(imgPath: "books", title: "Books", completedVal: .8),
  Learning(imgPath: "quizzes", title: "Quizzes", completedVal: .4),
];

List<Lesson> lessonList = [
  Lesson(
    title: "First Trip",
    body:
        "Here you will listen to conversations between tourists, and learn to speak together with them!",
    imgPath: generateImgPath('trip', isSvg: false),
  ),
  Lesson(
    title: "Freelance Work",
    body:
        "After taking this classes, you will be able to take orders from foreigners! ",
    imgPath: generateImgPath('work', isSvg: false),
  ),
  Lesson(
    title: "First Meeting",
    body:
        "You will learn to communicate with your colleagues and understand them!",
    imgPath: generateImgPath('meeting', isSvg: false),
  ),
  Lesson(
    title: "Meeting with Patners",
    body:
        "You will learn to communicate with your colleagues and understand them!",
    imgPath: generateImgPath('patners', isSvg: false),
  ),
];

List<Challenge> challengeList = [
  Challenge(
    title: "17",
    subtitle: "Challenges",
    icon: SvgPicture.asset(generateImgPath('target')),
  ),
  Challenge(
    title: "17",
    subtitle: "Lessons passed",
    icon: const Stack(
      alignment: Alignment.bottomRight,
      children: [
        Icon(
          Icons.bookmark,
          size: 25,
        ),
        Icon(
          Icons.play_arrow,
          size: 10,
        )
      ],
    ),
  ),
  Challenge(
    title: "05",
    subtitle: "Total Diamond",
    icon: const Icon(
      Icons.diamond_outlined,
      color: Colors.blue,
    ),
  ),
  Challenge(
    title: "11,147",
    subtitle: "Total lifetime XP",
    icon: const Icon(
      Icons.flash_on,
      color: Colors.amber,
    ),
  ),
  Challenge(
    title: "02",
    subtitle: "Streaks",
    icon: SvgPicture.asset(generateImgPath('fire')),
  ),
  Challenge(
    title: "36",
    subtitle: "Top 20% global",
    icon: Image.asset(
      generateImgPath('award', isSvg: false),
      height: 15,
    ),
  ),
];
