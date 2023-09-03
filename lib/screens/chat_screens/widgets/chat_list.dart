import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/data/info.dart';
import 'package:whatsapp_responsive_ui_clone/screens/chat_screens/widgets/chat_tile.dart';
import 'package:whatsapp_responsive_ui_clone/screens/chat_screens/widgets/mobile_chat_screen.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/color_constants.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  if ((!kIsWeb &&
                          Theme.of(context).platform ==
                              TargetPlatform.android) ||
                      MediaQuery.of(context).size.width < 900) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MobileChatScreen(),
                      ),
                    );
                  }
                },
                child: ChatTile(
                  chatUserName: info[index]['name'].toString(),
                  chatUserMessage: info[index]['message'].toString(),
                  chatUserProfilePicUrl: info[index]['profilePic'].toString(),
                  time: info[index]['time'].toString(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
