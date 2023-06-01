import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NotificationList extends StatelessWidget {
  final String iconstr;
  final String title;
  final String subtitle;
  final Color bgIconColor;
  const NotificationList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconstr,
      required this.bgIconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: bgIconColor,
            radius: 27,
            child: Icon(
              //truck_check_outline
              // bullhorn-outline
              // sale

              MdiIcons.fromString(iconstr),
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  maxLines: 4,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(subtitle),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
