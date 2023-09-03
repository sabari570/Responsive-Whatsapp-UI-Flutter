import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String chatUserName;
  final String chatUserMessage;
  final String chatUserProfilePicUrl;
  final String time;
  const ChatTile({
    super.key,
    required this.chatUserMessage,
    required this.chatUserName,
    required this.chatUserProfilePicUrl,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: ListTile(
        title: Text(
          chatUserName,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          chatUserMessage,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            chatUserProfilePicUrl,
          ),
        ),
        trailing: Text(
          time,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
