import 'package:chat9ja/models/app.dart';

class ListGroupModel {
  final String displayName;
  final String avatarUrl;
  final App app;
  final String message;
  final String sender;
  final String time;
  final bool byThisUser;
  final bool isNew;
  const ListGroupModel({
    required this.app,
    required this.displayName,
    required this.avatarUrl,
    required this.message,
    required this.sender,
    required this.time,
    this.byThisUser = false,
    this.isNew = false,
  });
}
