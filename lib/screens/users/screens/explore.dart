import 'package:chat9ja/custom_widgets/post.dart';
import 'package:chat9ja/models/post.dart';
import 'package:chat9ja/models/user.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    final List<User> users = <User>[
      User(displayName: "John Doe", avatarUrl: "assets/images/avatar.jpeg"),
      User(avatarUrl: "assets/images/avatar.jpeg", displayName: "Sammy"),
      User(avatarUrl: "assets/images/avatar.jpeg", displayName: "Ruth Owafor"),
    ];
    final List<Post> posts = <Post>[
      Post(
          user: users[0],
          caption: "Please where can i get the newer version of Chat9ja app",
          createdAt: "06:16 am",
          likes: 1938,
          comments: 29),
      Post(
          user: users[1],
          imageUrl:
              "https://ichef.bbci.co.uk/news/800/cpsprodpb/0F35/production/_118739830_nigeriapassport.jpg",
          caption: "I just got my international passport now. Congrat to me",
          createdAt: "Yesterday 12:15 am",
          likes: 203,
          comments: 4),
      Post(
          user: users[2],
          imageUrl:
              "https://ichef.bbci.co.uk/news/800/cpsprodpb/11A22/production/_119562227_whitemoney.jpg",
          createdAt: "Yesterday 06:16 am",
          likes: 9284,
          comments: 1049),
    ];
    return Column(children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PostWidget(posts[index]);
            },
          ),
        ),
      )
    ]);
  }
}
