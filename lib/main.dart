import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/screens/users/user.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final App app = App(lightMode: false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: app.appName,
      home: UserPortal(
        app: app,
      ),
    );
  }
}
