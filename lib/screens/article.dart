import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({super.key});

  List<String> img = [
    'images/book10.jpg',
    'images/book11.jpg',
    'images/book12.jpg',
    'images/book13.jpg',
    'images/book14.jpg',
    'images/book15.jpg',
    'images/book16.jpg',
    'images/book1.jpg',
    'images/book2.jpg',
    'images/book3.jpg',
    'images/book4.jpg',
    'images/book5.jpg',
    'images/book6.jpg',
    'images/book7.jpg',
    'images/book8.jpg',
    'images/book9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('My Books'),
        centerTitle: true,
        actions: [Icon(Icons.search_outlined)],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: img.length,
        itemBuilder: ((context, index) {
          return Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(img[index]),
                ),
              ));
        }),
      ),
    );
  }
}
