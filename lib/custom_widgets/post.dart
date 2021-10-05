import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat9ja/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

class PostWidget extends StatefulWidget {
  final Post post;
  const PostWidget(
    this.post, {
    Key? key,
  }) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final formatter =
      intl.NumberFormat.decimalPattern(); // formatted number will be: 1,234
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.post.user.avatarUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.user.displayName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF111129),
                        ),
                      ),
                      Text(
                        widget.post.createdAt,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0XFF111129),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz_outlined),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              widget.post.caption ?? "",
              style: TextStyle(
                fontSize: 14,
                color: Color(0XFF111129),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          widget.post.imageUrl != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image:
                        CachedNetworkImageProvider(widget.post.imageUrl ?? ""),
                  ),
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LikeWidget(),
              CommentWidget(),
              ShareWidget(),
            ],
          ),
        ],
      ),
    );
  }

  Widget LikeWidget() {
    return Container(
        child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.thumb_up_alt_outlined,
            size: 18,
          ),
        ),
        Text(
          formatter.format(widget.post.likes),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ));
  }

  Widget CommentWidget() {
    return Container(
        child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.messenger_outline_rounded,
            size: 18,
          ),
        ),
        Text(
          formatter.format(
            widget.post.comments,
          ),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ));
  }

  Widget ShareWidget() {
    return Container(
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.share,
          size: 18,
        ),
      ),
    );
  }
}
