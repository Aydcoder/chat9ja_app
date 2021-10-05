import 'package:chat9ja/models/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class SplashScreen extends StatefulWidget {
  final App app;
  const SplashScreen({Key? key, required this.app}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController pageController = PageController();
  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Privately Connected",
      description:
          "Chat9ja will allow you contact your friend safe and privately.",
      imgUrl: "assets/images/illustration01.png",
    ),
    const OnBoardModel(
      title: "Discover Forums",
      description:
          "Create or Discover a forum for discussion with your friend and more people.",
      imgUrl: "assets/images/illustration02.png",
    ),
    const OnBoardModel(
      title: "Build your Audience",
      description:
          "Analyze your data, start promoting and build your greate audience!",
      imgUrl: "assets/images/illustration.png",
    ),
    const OnBoardModel(
      title: "Details Contact Info",
      description:
          "Analyze your data, start promoting and build your greate audience!",
      imgUrl: "assets/images/illustration04.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.app.bgColor(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        child: OnBoard(
          onBoardData: onBoardData,
          pageController: pageController,
          // Either Provide onSkip Callback or skipButton Widget to handle skip state
          onSkip: () {
            print('skipped');
          },
          // Either Provide onDone Callback or nextButton Widget to handle done state
          onDone: () {
            print('done tapped');
          },
          titleStyles: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.15,
          ),
          descriptionStyles: TextStyle(
            fontSize: 14,
            color: Colors.white38,
          ),
          pageIndicatorStyle: const PageIndicatorStyle(
            width: 100,
            inactiveColor: Color(0XFF007AFE),
            activeColor: Color(0XFF007AFE),
            inactiveSize: Size(5, 5),
            activeSize: Size(12, 12),
          ),
          imageWidth: MediaQuery.of(context).size.width * 0.7,
          skipButton: Container(),
          nextButton: GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: widget.app.themeColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Sign In",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
