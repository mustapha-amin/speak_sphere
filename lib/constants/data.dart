import 'package:flutter/material.dart';
import 'package:speak_sphere/constants/image_paths.dart';

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
    imgPath: generateImgPath('trip'),
  ),
  Lesson(
    title: "Freelance Work",
    body:
        "After taking this classes, you will be able to take orders from foreigners! ",
    imgPath: generateImgPath('work'),
  ),
  Lesson(
    title: "First Meeting",
    body:
        "You will learn to communicate with your colleagues and understand them!",
    imgPath: generateImgPath('meeting'),
  ),
  Lesson(
    title: "Meeting with Patners",
    body:
        "You will learn to communicate with your colleagues and understand them!",
    imgPath: generateImgPath('partners'),
  ),
];
