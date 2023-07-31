import 'package:flutter/material.dart';
import 'package:whatsapp_ui_responsive/color.dart';

class MessageInputBox extends StatelessWidget {
  const MessageInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: dividerColor)),
        color: chatBarColor,
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file,
                color: Colors.grey,
              )),

              Expanded(child: Padding(padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: "type a message",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20),
                ),
              ),
              ),
              ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.mic, color: Colors.grey,)), 
        ],
      ),
    );
  }
}
