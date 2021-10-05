import 'package:flutter/material.dart';

class App {
  final Color themeColor = Color(0XFF007AFF);
  final String appName = "Chat9ja";
  bool lightMode = false;

  App({required this.lightMode});

  Color bgColor() {
    return lightMode ? Color(0XFFFCFEFF) : Color(0XFF131621);
  }
}
