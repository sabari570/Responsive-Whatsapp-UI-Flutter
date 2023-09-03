import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/color_constants.dart';

PreferredSizeWidget whatsappMobileAppBar() {
  return AppBar(
    backgroundColor: appBarColor,
    elevation: 0,
    title: const Text(
      "Whatsapp",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          color: Colors.grey,
        ),
      ),
    ],
    bottom: const TabBar(
      indicatorColor: tabColor,
      indicatorWeight: 4,
      labelColor: tabColor,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      tabs: [
        Tab(
          text: "Chats",
        ),
        Tab(
          text: "Status",
        ),
        Tab(
          text: "Calls",
        ),
      ],
    ),
  );
}
