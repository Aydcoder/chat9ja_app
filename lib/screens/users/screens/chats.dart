import 'package:chat9ja/custom_widgets/list_chat.dart';
import 'package:chat9ja/custom_widgets/list_group.dart';
import 'package:chat9ja/custom_widgets/user_avatar.dart';
import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/list_chat_model.dart';
import 'package:chat9ja/models/list_group_model.dart';
import 'package:chat9ja/models/user.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  final App app;
  const Chats({Key? key, required this.app}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    List _listchats = [
      ListChat(
        chat: ListChatModel(
          user: User(
            displayName: "Sophia",
            avatarUrl: "assets/images/stories/story04.png",
          ),
          app: widget.app,
          message: "Labore occaecat proident ullamco ut ex magna cillum culpa.",
          time: "12:04 pm",
          byThisUser: true,
        ),
      ),
      ListChat(
        chat: ListChatModel(
            user: User(
              displayName: "Christiana",
              avatarUrl: "assets/images/stories/story01.jpeg",
            ),
            app: widget.app,
            message:
                "Velit proident eiusmod consectetur voluptate nisi in adipisicing dolore velit qui.",
            time: "Yesterday",
            isNew: true),
      ),
      ListGroup(
        chat: ListGroupModel(
            displayName: "GENERAL CHAT GROUP",
            avatarUrl: "assets/images/stories/story04.png",
            app: widget.app,
            sender: "Rev. Oladimeji",
            message:
                "Velit proident eiusmod consectetur voluptate nisi in adipisicing dolore velit qui.",
            time: "now",
            isNew: true),
      ),
      ListChat(
        chat: ListChatModel(
          user: User(
            displayName: "James",
            avatarUrl: "assets/images/stories/story02.jpeg",
          ),
          app: widget.app,
          message:
              "Cillum ad incididunt laboris velit officia eiusmod non proident reprehenderit mollit duis esse eu.",
          time: "Wed",
          isNew: true,
        ),
      ),
      ListChat(
        chat: ListChatModel(
          user: User(
            displayName: "Pere Big Brother",
            avatarUrl: "assets/images/stories/story03.jpeg",
          ),
          app: widget.app,
          message:
              "Ut do quis eu irure esse mollit deserunt nisi ad labore elit consectetur qui.",
          time: "Today",
        ),
      ),
      ListChat(
        chat: ListChatModel(
            user: User(
              displayName: "Christiana",
              avatarUrl: "assets/images/stories/story05.png",
            ),
            app: widget.app,
            message:
                "Velit proident eiusmod consectetur voluptate nisi in adipisicing dolore velit qui.",
            time: "Yesterday",
            isNew: true),
      ),
      ListChat(
        chat: ListChatModel(
          user: User(
            displayName: "Allwing The King",
            avatarUrl: "assets/images/stories/story04.png",
          ),
          app: widget.app,
          message:
              "Labore magna reprehenderit proident reprehenderit fugiat non voluptate cupidatat veniam.",
          time: "now",
        ),
      ),
    ];
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Contacts",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: widget.app.textColor(),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_rounded,
                    size: 18,
                    color: widget.app.textColor(),
                  ),
                ),
              ],
            ),
          ),
          _favourites(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 10,
                right: 10,
              ),
              decoration: const BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                  itemCount: _listchats.length,
                  itemBuilder: (BuildContext context, index) {
                    return _listchats[index];
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Container _favourites() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            UserAvatar(
              app: widget.app,
              user: User(
                displayName: "Ella",
                avatarUrl: "assets/images/stories/story01.jpeg",
              ),
            ),
            UserAvatar(
              app: widget.app,
              user: User(
                displayName: "Christiana",
                avatarUrl: "assets/images/stories/story02.jpeg",
              ),
            ),
            UserAvatar(
                app: widget.app,
                user: User(
                  displayName: "James",
                  avatarUrl: "assets/images/stories/story03.jpeg",
                )),
            UserAvatar(
              app: widget.app,
              user: User(
                displayName: "Sophia",
                avatarUrl: "assets/images/stories/story04.png",
              ),
            ),
            UserAvatar(
              app: widget.app,
              user: User(
                displayName: "Ephraim",
                avatarUrl: "assets/images/stories/story05.png",
              ),
            ),
            UserAvatar(
              app: widget.app,
              user: User(
                displayName: "Judith",
                avatarUrl: "assets/images/stories/story06.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
