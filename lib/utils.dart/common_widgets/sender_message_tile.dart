import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui_clone/utils.dart/color_constants.dart';

Widget senderMessageTile(
    {required BuildContext context,
    required String messageContent,
    required String sentTime}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: SizedBox(
      width: MediaQuery.of(context).size.width - 45,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Card(
            elevation: 1,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            color: senderMessageColor,
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text(
                    messageContent,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 2,
                    right: 10,
                    child: Row(
                      children: [
                        Text(
                          sentTime,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white60,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.done_all,
                          size: 20,
                          color: Colors.white60,
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
