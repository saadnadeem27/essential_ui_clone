import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home_page/home_page.dart';

class HomeListTile extends StatefulWidget {
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Widget child;
  const HomeListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onTap,
      required this.child});

  @override
  State<HomeListTile> createState() => _HomeListTileState();
}

class _HomeListTileState extends State<HomeListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListTile(
        onTap: widget.onTap,
        leading: Icon(
          Icons.people,
          size: 60,
        ),
        title: Text(
          widget.title,
          style: kTextStyle,
        ),
        //minVerticalPadding: 10,
        subtitle: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            widget.subtitle,
            style: kTextStyle,
          ),
        ),
      ),
    );
  }
}
