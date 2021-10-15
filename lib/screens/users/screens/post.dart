import 'package:chat9ja/custom_widgets/comment.dart';
import 'package:chat9ja/custom_widgets/like_avatar.dart';
import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/post.dart';
import 'package:chat9ja/models/user.dart';
import 'package:flutter/material.dart';

//Todo: finish Post page
class PostScreen extends StatefulWidget {
  final App app;
  const PostScreen({Key? key, required this.app}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          color: Colors.white10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _likesWidget(app: widget.app),
            const SizedBox(
              height: 20,
            ),
            _commentsWidget(app: widget.app),
          ],
        ),
      ),
    );
  }

  Widget _likesWidget({required App app}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Likes",
          style: TextStyle(
            color: app.textColor(),
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LikeAvatar(
              app: app,
              imageUrl: "assets/images/stories/story01.jpeg",
            ),
            LikeAvatar(
              app: app,
              imageUrl: "assets/images/stories/story02.jpeg",
            ),
            LikeAvatar(
              app: app,
              imageUrl: "assets/images/stories/story03.jpeg",
            ),
            LikeAvatar(
              app: app,
              imageUrl: "assets/images/stories/story04.png",
            ),
            LikeAvatar(
              app: app,
              imageUrl: "assets/images/stories/story05.png",
            ),
            LikeAvatar(
              app: app,
              imageUrl: "assets/images/stories/story06.png",
            ),
            MoreLikesAvatar(app: app, count: 1928)
          ],
        )
      ],
    );
  }

  Widget _commentsWidget({required App app}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Likes",
              style: TextStyle(
                color: app.textColor(),
                fontSize: 14,
              ),
            ),
            Text(
              "Most Recent",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CommentWidget(
          Post(
              comments: 1823,
              likes: 10392,
              createdAt: "10:42 am",
              caption:
                  "This is the caption to this post. Imagine this mumu of another grade",
              user: User(
                  displayName: "LionTiger",
                  avatarUrl: "assets/images/stories/story05.png"),
              imageUrl: "assets/images/stories/story01.jpeg"),
          app: widget.app,
          comments: [
            CommentWidget(
              Post(
                  comments: 1823,
                  likes: 10392,
                  createdAt: "10:42 am",
                  caption:
                      "This is the caption to this post. Imagine this mumu of another grade",
                  user: User(
                      displayName: "LionTiger",
                      avatarUrl: "assets/images/stories/story01.jpeg"),
                  imageUrl: "assets/images/stories/story04.png"),
              app: widget.app,
              comments: const [],
            )
          ],
        )
      ],
    );
  }
}
