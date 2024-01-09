import 'package:flutter/material.dart';

extension BuildContextExts on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  void push(Widget? screen) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => screen!));
  }
}

extension WidgetExtensions on Widget {
  Padding padX(double? size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size!),
      child: this,
    );
  }

  Padding padY(double? size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size!),
      child: this,
    );
  }

  Padding padAll(double? size) {
    return Padding(
      padding: EdgeInsets.all(size!),
      child: this,
    );
  }

  Center centralize() {
    return Center(
      child: this,
    );
  }
}
