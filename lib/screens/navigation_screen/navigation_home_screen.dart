import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/navigator_grid_view.dart';

class NavigationPhotosScreen extends StatefulWidget {
  const NavigationPhotosScreen({super.key});

  @override
  State<NavigationPhotosScreen> createState() => _NavigationPhotosScreenState();
}

class _NavigationPhotosScreenState extends State<NavigationPhotosScreen> {
  List<String> list1 = [
    'images/p1.jpg',
    'images/p2.jpg',
    'images/p3.jpg',
    'images/p4.jpg',
    'images/p5.jpg',
  ];
  List<String> list2 = [
    'images/p3.jpg',
    'images/p4.jpg',
    'images/p5.jpg',
    'images/p1.jpg',
    'images/p2.jpg',
    'images/p7.jpg',
  ];
  List<String> list3 = [
    'images/p4.jpg',
    'images/p7.jpg',
    'images/p3.jpg',
    'images/p1.jpg',
    'images/p2.jpg',
    'images/p3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos'),
        backgroundColor: Colors.deepPurple,
        actions: [Icon(Icons.edit)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'June 22,2019',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            NavigatorGridView(img: list1),
            SizedBox(
              height: 10,
            ),
            Text(
              'June 20,2019',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            NavigatorGridView(img: list2),
            SizedBox(
              height: 10,
            ),
            Text(
              'June 20,2019',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            NavigatorGridView(img: list3),
            SizedBox(
              height: 10,
            ),
            Text(
              'June 18,2019',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            NavigatorGridView(img: list1),
          ],
        ),
      ),
    );
  }
}
