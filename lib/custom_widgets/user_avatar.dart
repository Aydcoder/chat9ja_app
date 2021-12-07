import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/user.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final App app;
  final User user;
  const UserAvatar({Key? key, required this.app, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: app.lightMode ? const Color(0XFF000000) : Colors.white12,
                image: DecorationImage(
                  image: AssetImage(user.avatarUrl),
                  fit: BoxFit.cover,
                ),
              ),
              height: 70,
              width: 70,
            ),
            const SizedBox(height: 9),
            Text(
              user.displayName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: app.textColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
