import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NavigationSettingScreen extends StatefulWidget {
  const NavigationSettingScreen({super.key});

  @override
  State<NavigationSettingScreen> createState() =>
      _NavigationSettingScreenState();
}

class _NavigationSettingScreenState extends State<NavigationSettingScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Backup automatically',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                FlutterSwitch(
                  width: 80.0,
                  height: 40.0,
                  activeText: '',
                  inactiveText: '',
                  //valueFontSize: 25.0,
                  toggleSize: 35.0,
                  value: status,
                  borderRadius: 55.0,
                  // padding: 8.0,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Download quality',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Show hidden files',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(Icons.chevron_right_outlined)
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
