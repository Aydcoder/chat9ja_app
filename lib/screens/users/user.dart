import 'package:chat9ja/screens/users/screens/explore.dart';
import 'package:flutter/material.dart';

class UserPortal extends StatefulWidget {
  const UserPortal({Key? key}) : super(key: key);

  @override
  _UserPortalState createState() => _UserPortalState();
}

class _UserPortalState extends State<UserPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFCFEFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Chat9ja",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Explore(),
    );
  }
}
