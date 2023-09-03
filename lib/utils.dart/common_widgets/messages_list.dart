import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/data/info.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/common_widgets/my_message_tile.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/common_widgets/sender_message_tile.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        var messageContent = messages[index]['text'].toString();
        var sentTime = messages[index]['time'].toString();
        if (messages[index]['isMe'] == true) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: myMessageTile(
              context: context,
              messageContent: messageContent,
              sentTime: sentTime,
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: senderMessageTile(
              context: context,
              messageContent: messageContent,
              sentTime: sentTime,
            ),
          );
        }
      },
    );
  }
}
