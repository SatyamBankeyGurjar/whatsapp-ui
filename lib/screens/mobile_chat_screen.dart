import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/color.dart';
import 'package:whatsapp_ui_responsive/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("name"),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          // chat list
          Expanded(child: ChatList()),

          //text input for message
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: chatBarColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.money,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                hintText: "Message",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    ),
                    contentPadding: EdgeInsets.all(10)
                  ),
          )
        ],
      ),
    );
  }
}
