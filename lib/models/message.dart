class Message {
  final String content;
  final String time;
  final bool byLoggedInUser;

  Message(
      {required this.content, required this.time, this.byLoggedInUser = false});
}
