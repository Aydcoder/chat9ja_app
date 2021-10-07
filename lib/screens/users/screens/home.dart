import 'package:chat9ja/custom_widgets/story_avatar.dart';
import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final App app;
  Home({Key? key, required this.app}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        stories(),
      ],
    );
  }

  Container stories() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.app.lightMode
                    ? const Color(0XFF000000)
                    : Colors.white12,
              ),
              child: Icon(
                Icons.camera_enhance_rounded,
                color: widget.app.lightMode ? Colors.black : Colors.white,
                size: 20,
              ),
            ),
            StoryAvatar(
              app: widget.app,
              noOfStories: 8,
              imageUrl: "assets/images/stories/story01.jpeg",
            ),
            StoryAvatar(
              app: widget.app,
              noOfStories: 3,
              imageUrl: "assets/images/stories/story02.jpeg",
            ),
            StoryAvatar(
              app: widget.app,
              noOfStories: 5,
              imageUrl: "assets/images/stories/story03.jpeg",
            ),
            StoryAvatar(
              app: widget.app,
              noOfStories: 20,
              imageUrl: "assets/images/stories/story04.png",
            ),
            StoryAvatar(
              app: widget.app,
              noOfStories: 2,
              imageUrl: "assets/images/stories/story05.png",
            ),
            StoryAvatar(
              app: widget.app,
              noOfStories: 1,
              imageUrl: "assets/images/stories/story06.png",
            ),
          ],
        ),
      ),
    );
  }
}
