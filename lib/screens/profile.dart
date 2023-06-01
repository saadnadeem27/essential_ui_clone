import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ptofile'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/p1.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hardy Grant',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.online_prediction_outlined,
                color: Colors.green,
              ),
              title: Text('Available',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person_outline,
              ),
              title: Text('HadryGran@gmail.com',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.phone_outlined,
              ),
              title: Text('+1-202-555-0101',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.notifications_outlined,
              ),
              title: Text('Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.help_outlined,
              ),
              title: Text('Help',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
