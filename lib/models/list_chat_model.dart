import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/models/user.dart';

class ListChatModel {
  final User user;
  final App app;
  final String message;
  final String time;
  final bool byThisUser;
  final bool isNew;
  final bool isTyping;
  const ListChatModel({
    required this.user,
    required this.app,
    required this.message,
    required this.time,
    this.byThisUser = false,
    this.isNew = false,
    this.isTyping = false,
  });
}
