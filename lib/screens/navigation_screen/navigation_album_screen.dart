import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/nav_album_list.dart';

class NavigationAlbumScreen extends StatelessWidget {
  const NavigationAlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albums'),
        backgroundColor: Colors.deepPurple,
        actions: [
          Icon(
            Icons.add,
            color: Colors.red,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('MY ALBUM'),
                  Text(
                    'VIEW ALL',
                    style: TextStyle(color: Colors.blueAccent),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              NavigationAlbumList(
                  img: 'images/w1.jpg', title: 'Favourites', subtitle: '178'),
              SizedBox(
                height: 10,
              ),
              NavigationAlbumList(
                  img: 'images/w2.jpg', title: 'Whatsapp', subtitle: '187'),
              SizedBox(
                height: 10,
              ),
              NavigationAlbumList(
                  img: 'images/w3.jpg', title: 'Work', subtitle: '156'),
              SizedBox(
                height: 10,
              ),
              NavigationAlbumList(
                  img: 'images/w4.jpg', title: 'Facebook', subtitle: '67'),
            ],
          ),
        ),
      ),
    );
  }
}
