import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

class PostWidget extends StatefulWidget {
  final App app;
  final Post post;
  const PostWidget(this.post, {Key? key, required this.app}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  final formatter =
      intl.NumberFormat.decimalPattern(); // formatted number will be: 1,234
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: widget.app.lightMode ? widget.app.bgColor() : Colors.white10,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.post.user.avatarUrl),
                    radius: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.user.displayName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: widget.app.textColor(),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.post.createdAt,
                        style: TextStyle(
                          fontSize: 14,
                          color: widget.app.textColor(),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: widget.app.textColor(),
                ),
              ),
            ],
          ),
          widget.post.caption != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    widget.post.caption ?? "",
                    style: TextStyle(
                      fontSize: 16,
                      color: widget.app.textColor(),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                )
              : const SizedBox(
                  height: 10,
                ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
              image: AssetImage(widget.post.imageUrl),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                likeWidget(),
                const SizedBox(width: 20),
                commentWidget(),
                const SizedBox(width: 20),
                shareWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget likeWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.thumb_up_alt_outlined,
          size: 20,
          color: widget.app.textColor(),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          formatter.format(widget.post.likes),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: widget.app.textColor(),
          ),
        ),
      ],
    );
  }

  Widget commentWidget() {
    return Row(
      children: [
        Icon(
          Icons.messenger_outline_rounded,
          size: 20,
          color: widget.app.textColor(),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          formatter.format(
            widget.post.comments,
          ),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: widget.app.textColor(),
          ),
        ),
      ],
    );
  }

  Widget shareWidget() {
    return Icon(
      Icons.share,
      size: 18,
      color: widget.app.textColor(),
    );
  }
}
