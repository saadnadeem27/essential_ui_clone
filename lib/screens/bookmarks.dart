import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/bookmark_list.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmarks'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookmarkList(
              title: 'Learning to Reset',
              subtitle1: 'John Doe',
              subtitle2: 'Apr 16 | 5 mins read',
              imagePath: 'images/w7.jpg',
            ),
            BookmarkList(
              title: 'Holitis Approach to UI Design',
              subtitle1: 'John Doe',
              subtitle2: 'Apr 15 | 5 mins read',
              imagePath: 'images/w5.jpg',
            ),
            BookmarkList(
              title: 'Guiding Your Flock to Success',
              subtitle1: 'John Doe',
              subtitle2: 'May 10 | 5 mins read',
              imagePath: 'images/w6.jpg',
            ),
            BookmarkList(
              title: 'Be a Burturing, Fierce Team Leader',
              subtitle1: 'John Doe',
              subtitle2: 'Apr 16 | 5 mins read',
              imagePath: 'images/w2.jpg',
            ),
            BookmarkList(
              title: 'Guiding Your Flock to Success',
              subtitle1: 'John Doe',
              subtitle2: 'May 10 | 5 mins read',
              imagePath: 'images/w3.jpg',
            ),
            BookmarkList(
              title: 'Be a Burturing, Fierce Team Leader',
              subtitle1: 'John Doe',
              subtitle2: 'Apr 16 | 5 mins read',
              imagePath: 'images/w4.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
