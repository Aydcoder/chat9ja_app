import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/message.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatefulWidget {
  final Message message;

  final App app;
  const MessageWidget({Key? key, required this.app, required this.message})
      : super(key: key);

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.message.byLoggedInUser
        ? _outgoingMessage()
        : _incomingMessage();
  }

  _incomingMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Colors.white10,
            ),
            child: Text(
              widget.message.content,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Text(
              widget.message.time,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _outgoingMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Text(
              widget.message.time,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 13,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Colors.blue,
            ),
            child: Stack(
              children: [
                Text(
                  widget.message.content,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.check_outlined,
                        color: Colors.white,
                        size: 16,
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
