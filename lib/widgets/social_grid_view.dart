import 'package:flutter/material.dart';

class SocialGridView extends StatelessWidget {
  final String img;
  const SocialGridView({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 100,
        // width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(img),
          ),
        ),
      ),
    );
  }
}

class SocialDataSetGridView {
  List<SocialGridView> sgv = [
    SocialGridView(img: 'images/w2.jpg'),
    SocialGridView(img: 'images/w3.jpg'),
    SocialGridView(img: 'images/w4.jpg'),
    SocialGridView(img: 'images/w5.jpg'),
    SocialGridView(img: 'images/w6.jpg'),
    SocialGridView(img: 'images/w7.jpg'),
  ];
}
