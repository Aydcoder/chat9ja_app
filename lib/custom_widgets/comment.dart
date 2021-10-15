import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

class CommentWidget extends StatefulWidget {
  final App app;
  final Post post;
  List<CommentWidget> comments = [];
  CommentWidget(this.post,
      {Key? key, required this.app, required this.comments})
      : super(key: key);

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  final formatter =
      intl.NumberFormat.decimalPattern(); // formatted number will be: 1,234
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(widget.post.user.avatarUrl),
          radius: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: widget.app.lightMode
                      ? widget.app.bgColor()
                      : Colors.white10,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.post.user.displayName,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: widget.app.textColor(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  widget.post.createdAt,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                        widget.post.caption != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  widget.post.caption ?? "",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white60,
                                  ),
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
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "like | Reply ~ 2 reply",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //       return widget.comments[index];
              //     },
              //     itemCount: widget.comments.length,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
