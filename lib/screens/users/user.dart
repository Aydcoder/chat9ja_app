import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/screens/users/screens/home.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'package:flutter/material.dart';

class UserPortal extends StatefulWidget {
  final App app;
  const UserPortal({Key? key, required this.app}) : super(key: key);

  @override
  _UserPortalState createState() => _UserPortalState();
}

class _UserPortalState extends State<UserPortal> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> appBody = <Widget>[
      Home(
        app: widget.app,
      ),
    ];
    return Scaffold(
      backgroundColor: widget.app.bgColor(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Chat9ja",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: appBody[_selectedIndex],
      bottomNavigationBar: DotNavigationBar(
        marginR: const EdgeInsets.all(20),
        paddingR: EdgeInsets.only(bottom: 5, top: 5),
        backgroundColor:
            widget.app.lightMode ? const Color(0XFF000000) : Colors.black54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        dotIndicatorColor: Colors.black,
        // enableFloatingNavBar: false
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: widget.app.themeColor,
            unselectedColor: widget.app.lightMode ? Colors.black : Colors.white,
          ),

          /// Notifications
          DotNavigationBarItem(
            icon: const Icon(Icons.notifications_active_rounded),
            selectedColor: widget.app.themeColor,
            unselectedColor: widget.app.lightMode ? Colors.black : Colors.white,
          ),

          /// Add
          DotNavigationBarItem(
            icon: const Icon(Icons.add),
            selectedColor: widget.app.themeColor,
            unselectedColor: widget.app.lightMode ? Colors.black : Colors.white,
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedColor: widget.app.themeColor,
            unselectedColor: widget.app.lightMode ? Colors.black : Colors.white,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: widget.app.themeColor,
            unselectedColor: widget.app.lightMode ? Colors.black : Colors.white,
          ),
        ],
      ),
    );
  }
}
