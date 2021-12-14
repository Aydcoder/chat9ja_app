import 'package:chat9ja/custom_widgets/message.dart';
import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/list_chat_model.dart';
import 'package:chat9ja/models/message.dart';
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
    List _messages = [
      Message(
          content:
              "Irure et cillum cupidatat fugiat adipisicing ad commodo eiusmod ipsum officia elit ullamco veniam aliquip. Id ullamco veniam id non cupidatat incididunt minim occaecat officia nostrud. Fugiat tempor dolore tempor sunt. Ut eu occaecat duis Lorem laborum in.",
          time: "2:49 pm"),
      Message(
          content: "Magna adipisicing nulla qui cupidatat cillum.",
          time: "2:49 pm"),
      Message(
          content:
              "Eu consectetur sit occaecat proident irure magna aute mollit qui fugiat culpa ex fugiat. Sint elit nisi ipsum excepteur nostrud minim pariatur sint nostrud dolore elit irure elit sit. Enim eiusmod ipsum veniam fugiat officia culpa non amet commodo et qui dolor officia anim. Aliquip officia aliqua nulla est veniam aliquip elit laboris incididunt. Nulla deserunt ullamco nulla proident velit eiusmod ex non.",
          time: "4:49 pm",
          byLoggedInUser: true),
    ];
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return MessageWidget(
                      app: widget.chat.app, message: _messages[index]);
                },
              ),
            ),
          ),
          _messageConstructor(),
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

  _messageConstructor() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Colors.black87),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.insert_emoticon_outlined,
              color: Colors.blue,
            ),
          ),
          const Expanded(child: TextField()),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
