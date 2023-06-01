import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Edit Profile'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Change Password'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.share_outlined),
                title: Text('Link Account'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Notification',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.notifications_outlined),
                title: Text('Notifications'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Email Notifications'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Support',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Help'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Terms of Service'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Privay and Policy'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              // margin: EdgeInsets.all(0),
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('FAQs'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Center(
                    child: Text(
                  'LOG OUT',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.red, Colors.pink])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
