import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  final IconData chatStatusIcon;
  final String chatTime;
  final Color chatStatusIconColor;

  ChatListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.chatStatusIcon,
      required this.chatStatusIconColor,
      required this.img,
      required this.chatTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(img),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(subtitle),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(chatTime),
            SizedBox(
              height: 5,
            ),
            Icon(
              chatStatusIcon,
              color: chatStatusIconColor,
            ),
          ],
        ),
      ),
    );
  }
}
