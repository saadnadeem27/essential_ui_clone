import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/social_grid_view.dart';
import 'package:forms_ui/widgets/social_list_connection.dart';

class SocialScreen extends StatelessWidget {
  SocialScreen({super.key});
  SocialListDataCon sss = SocialListDataCon();
  SocialDataSetGridView sgs = SocialDataSetGridView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [Icon(Icons.settings_outlined)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/p5.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Lela Cortez',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text('Designer | San Francisco CA'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Posts',
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Followers',
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Following',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'I am a UMN graduate(go Gophers!) and Minnesota native but i am already loving my new home in the golden gate city! I can wait to explore more of the great music scene here.',
              maxLines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CONNECTIONS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 192, 187, 187),
                    radius: 30,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      child: ListView.builder(
                          itemCount: sss.slc.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SocialListConnection(
                              img: sss.slc[index].img,
                              title: sss.slc[index].title,
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'PHOTOS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: ((context, index) {
                return SocialGridView(img: sgs.sgv[index].img);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
