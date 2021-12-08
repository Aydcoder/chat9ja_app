import 'package:chat9ja/models/list_chat_model.dart';
import 'package:chat9ja/screens/users/screens/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListChat extends StatelessWidget {
  final ListChatModel chat;
  const ListChat({Key? key, required this.chat}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            //opaque: false, // set to false
            pageBuilder: (_, __, ___) => Chat(chat: chat),
          ),
        );
      },
      child: Container(
        margin: chat.isNew
            ? const EdgeInsets.symmetric(vertical: 5)
            : const EdgeInsets.all(0),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: chat.isNew ? Colors.white10 : Colors.transparent,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  _userAvatar(),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chat.user.displayName,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white60,
                          ),
                        ),
                        const SizedBox(height: 10),
                        chat.isTyping
                            ? Text(
                                "typing",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: chat.app.textColor(),
                                ),
                              )
                            : _messageWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  chat.time,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: chat.app.textColor(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                chat.isNew ? _newBadge() : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }

  _userAvatar() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                chat.app.lightMode ? const Color(0XFF000000) : Colors.white12,
            image: DecorationImage(
              image: AssetImage(chat.user.avatarUrl),
              fit: BoxFit.cover,
            ),
          ),
          height: 70,
          width: 70,
        ),
      ],
    );
  }

  _newBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "NEW",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _messageWidget() {
    return chat.byThisUser
        ? RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: "You: ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: chat.app.textColor(),
              ),
              children: [
                TextSpan(
                  text: chat.message,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: chat.app.textColor(),
                  ),
                ),
              ],
            ),
          )
        : Text(
            chat.message,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: chat.app.textColor(),
            ),
          );
  }
}
