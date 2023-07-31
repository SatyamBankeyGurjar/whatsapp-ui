import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/widgets/contacts_list.dart';
import 'package:whatsapp_ui_responsive/widgets/web_profileBar.dart';

import '../widgets/chat_list.dart';
import '../widgets/message_input_box.dart';
import '../widgets/web_chat_app_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile
                  WebProfileBar(),

                  //web search
                  WebScreenLayout(),

                  //contact list
                  ContactsList()
                ],
              ),
            ),
          ),

          //web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(''),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
              children: [
                // chat app bar
                WebChatAppBar(),

                // chat list
                Expanded(child: ChatList()),

                // message input box
                MessageInputBox()
              ],
            ),
          )
        ],
      )
    );
  }
}
