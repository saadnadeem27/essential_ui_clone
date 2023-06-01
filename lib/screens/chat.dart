import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/chat_list_data_set.dart';
import 'package:forms_ui/widgets/chat_list_tile.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  final cdataset = ChatListDataSet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        backgroundColor: Colors.deepPurple,
        actions: [
          Icon(Icons.search_outlined),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView.builder(
        itemCount: cdataset.chatListTile.length,
        itemBuilder: ((context, index) {
          return ChatListTile(
              title: cdataset.chatListTile[index].title,
              subtitle: cdataset.chatListTile[index].subtitle,
              chatStatusIcon: cdataset.chatListTile[index].chatStatusIcon,
              chatStatusIconColor:
                  cdataset.chatListTile[index].chatStatusIconColor,
              img: cdataset.chatListTile[index].img,
              chatTime: cdataset.chatListTile[index].chatTime);
        }),
      ),
    );
  }
}
