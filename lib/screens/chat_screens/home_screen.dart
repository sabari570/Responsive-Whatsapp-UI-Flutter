import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/screens/chat_screens/widgets/chat_list.dart';
import 'package:whatsapp_responsive_ui_clone/screens/chat_screens/widgets/mobile_app_bar.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: whatsappMobileAppBar(),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ChatList(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
