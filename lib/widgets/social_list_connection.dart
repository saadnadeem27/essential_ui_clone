import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SocialListConnection extends StatelessWidget {
  final String title;
  final String img;
  const SocialListConnection(
      {super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
            backgroundColor: Colors.red,
            radius: 30,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class SocialListDataCon {
  List<SocialListConnection> slc = [
    SocialListConnection(img: 'images/p1.jpg', title: 'Rose King'),
    SocialListConnection(img: 'images/p2.jpg', title: 'Jenny King'),
    SocialListConnection(img: 'images/p3.jpg', title: 'Matt HArdy'),
    SocialListConnection(img: 'images/p4.jpg', title: 'Lily Amber'),
    SocialListConnection(img: 'images/p5.jpg', title: 'Lana Gihg'),
    SocialListConnection(img: 'images/p6.jpg', title: 'ALfha rose'),
    SocialListConnection(img: 'images/p7.jpg', title: 'Hadry Broc'),
    SocialListConnection(img: 'images/p4.jpg', title: 'Emma Watson'),
    SocialListConnection(img: 'images/p3.jpg', title: 'Roman Regihn'),
  ];
}
