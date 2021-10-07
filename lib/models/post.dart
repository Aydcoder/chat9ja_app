import 'package:chat9ja/models/user.dart';

class Post {
  final User user;
  final String imageUrl;
  final String? caption;
  final String createdAt;
  final int likes;
  final int comments;

  Post(
      {required this.user,
      required this.imageUrl,
      this.caption,
      required this.createdAt,
      required this.likes,
      required this.comments});
}
