import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback? onTap;
  final App app;
  final String caption;
  final Function? todo;
  const Button(
      {Key? key,
      required this.app,
      required this.caption,
      this.todo,
      this.onTap})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            color: widget.app.themeColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(widget.caption,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              )),
        ),
      ),
      onTap: () {
        widget.onTap;
      },
    );
  }
}
