import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/screens/navigation_screen/navigation_album_screen.dart';
import 'package:forms_ui/screens/navigation_screen/navigation_home_screen.dart';
import 'package:forms_ui/screens/navigation_screen/navigation_settings_screen.dart';

class NavigationMainScreen extends StatefulWidget {
  const NavigationMainScreen({super.key});

  @override
  State<NavigationMainScreen> createState() => _NavigationMainScreenState();
}

class _NavigationMainScreenState extends State<NavigationMainScreen> {
  int _currentIndex = 0;
  final myBottomNavClassesList = [
    NavigationPhotosScreen(),
    NavigationAlbumScreen(),
    NavigationSettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            setState(() {
              _currentIndex = value;
            });
          }),
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          selectedFontSize: 18,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_sharp), label: 'Photos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album_outlined), label: 'Album'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ]),
      body: myBottomNavClassesList[_currentIndex],
    );
  }
}
