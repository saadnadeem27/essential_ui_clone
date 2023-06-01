import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationAlbumList extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  const NavigationAlbumList(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          opacity: 30,
          fit: BoxFit.fill,
          image: AssetImage(img),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 25, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
              strutStyle: StrutStyle(),
            ),
            SizedBox(
              height: 5,
            ),
            Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
