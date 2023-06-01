import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/notification_list.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          NotificationList(
            title:
                'Delivered: Your package of boat BassHeads 100 Stero in-Ear Earphone (Black)',
            subtitle: '5 Mins ago',
            bgIconColor: Colors.orange,
            iconstr: 'truck_check_outline',
          ),
          Divider(
            color: Colors.black,
          ),
          NotificationList(
            title: 'Get 20% OFF on Home Products. Offer Valid for 24 hours.',
            subtitle: '4 hours ago',
            bgIconColor: Color.fromARGB(255, 95, 23, 238),
            iconstr: 'sale',
          ),
          Divider(
            color: Colors.black,
          ),
          NotificationList(
            title:
                'Flash Sale starting tommoro. Don\'t forgot to check it out.',
            subtitle: '9 hours ago',
            bgIconColor: Colors.green,
            iconstr: 'bullhorn-outline',
          ),
          Divider(
            color: Colors.black,
            height: 1,
            thickness: 1,
          ),
          NotificationList(
            title: 'Package order #246734 has arrived.',
            subtitle: '9 hours ago',
            bgIconColor: Color.fromARGB(255, 233, 30, 189),
            iconstr: 'truck-outline',
          ),
          Divider(
            color: Colors.black,
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
