import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/screens/chat_screens/widgets/chat_list.dart';
import 'package:whatsapp_responsive_ui_clone/screens/web_screen/widgets/web_chat_app_bar.dart';
import 'package:whatsapp_responsive_ui_clone/screens/web_screen/widgets/web_profile_bar.dart';
import 'package:whatsapp_responsive_ui_clone/screens/web_screen/widgets/web_search_bar.dart';
import 'package:whatsapp_responsive_ui_clone/screens/web_screen/widgets/web_message_input_field.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/common_widgets/messages_list.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ChatList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/backgroundImage.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              children: [
                WebChatAppBar(),
                Expanded(
                  child: MessagesList(),
                ),
                MessageInputField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
