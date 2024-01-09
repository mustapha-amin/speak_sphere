import 'package:flutter/material.dart';
import 'package:speak_sphere/screens/btm_nav_bar.dart';
import 'package:speak_sphere/screens/setup.dart';
import 'package:speak_sphere/screens/splash_screen.dart';
import 'constants/appcolors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color(AppColors.bgColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: Color(AppColors.brownColor),
          foregroundColor: Colors.white,
        )),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          foregroundColor: Color(AppColors.brownColor),
        )),
      ),
      home: const SetupScreen(),
    );
  }
}