import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';

class AuthDescription extends StatelessWidget {
  final App app;
  final String line1;
  final String line2;
  final String line3;
  const AuthDescription(this.app,
      {Key? key, required this.line1, required this.line2, required this.line3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          line1,
          style: TextStyle(
            color: app.lightMode ? Colors.black45 : Colors.white38,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          line2,
          style: TextStyle(
            color: app.textColor(),
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          line3,
          style: TextStyle(
            color: app.lightMode ? Colors.black45 : Colors.white38,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
