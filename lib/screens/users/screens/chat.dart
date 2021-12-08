import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/list_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Chat extends StatefulWidget {
  final ListChatModel chat;
  const Chat({Key? key, required this.chat}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.chat.app.bgColor(),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        backgroundColor: Colors.white10,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: _userAvatar(),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white10,
            ),
            child: const Text(
              "Hello there",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _userAvatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.chat.app.lightMode
                ? const Color(0XFF000000)
                : Colors.white12,
            image: DecorationImage(
              image: AssetImage(widget.chat.user.avatarUrl),
              fit: BoxFit.cover,
            ),
          ),
          height: 45,
          width: 45,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.chat.user.displayName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: widget.chat.app.textColor(),
          ),
        ),
      ],
    );
  }
}
