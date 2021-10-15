import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';

class LikeAvatar extends StatelessWidget {
  final App app;
  final String? imageUrl;
  const LikeAvatar({Key? key, required this.app, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
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
        height: 42,
        width: 42,
      ),
    );
  }
}

class MoreLikesAvatar extends StatelessWidget {
  final App app;
  final int count;
  const MoreLikesAvatar({Key? key, required this.app, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: app.lightMode ? const Color(0XFF000000) : Colors.white12,
      ),
      height: 42,
      width: 42,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          "+" + count.toString(),
          style: TextStyle(
            color: app.textColor(),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
