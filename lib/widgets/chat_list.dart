import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/widgets/my_message_card.dart';

class ChatList extends StatelessWidget {
   ChatList({super.key});
  var messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            // my message
            return MyMessageCard(
                message: messages[index]["text"].toString(),
                date: messages[index]["time"].toString());
          }
          // sender message
          return MyMessageCard(
              message: messages[index]["text"].toString(),
              date: messages[index]["time"].toString());
        });
  }
}
