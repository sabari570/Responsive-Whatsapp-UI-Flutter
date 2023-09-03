import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/color_constants.dart';

class MobileMessageField extends StatelessWidget {
  const MobileMessageField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 200.0,
        ),
        child: TextField(
          controller: messageController,
          maxLines: null,
          decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: const Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
              hintText: "Type a message",
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10)),
        ),
      ),
    );
  }
}
