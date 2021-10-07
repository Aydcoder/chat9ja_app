import 'package:chat9ja/models/app.dart';
import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  final int noOfStories;
  final App app;
  final String? imageUrl;
  bool? isLive = false;
  StoryAvatar(
      {Key? key,
      required this.app,
      required this.noOfStories,
      this.isLive,
      this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: DashedCircle(
        dashes: this.noOfStories,
        color: app.themeColor,
        strokeWidth: .5,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: app.lightMode ? const Color(0XFF000000) : Colors.white12,
              image: imageUrl != null
                  ? DecorationImage(
                      image: AssetImage(imageUrl ?? ""),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            height: 50,
            width: 50,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text("Whee are here as we use to do"),
            ),
          ),
        ),
      ),
    );
  }
}
