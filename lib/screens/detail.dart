import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> img = [
    'images/p1.jpg',
    'images/p6.jpg',
    'images/p2.jpg',
    'images/p3.jpg',
    'images/p7.jpg',
    'images/p4.jpg',
    'images/p2.jpg',
    'images/p6.jpg',
    'images/p3.jpg',
    'images/p5.jpg',
    'images/p6.jpg',
    'images/p2.jpg',
    'images/p3.jpg',
    'images/p7.jpg',
    'images/p4.jpg',
    'images/p7.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/w7.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 400, left: 100),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: MaterialButton(
                color: Colors.pink,
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ignite Music',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.favorite_border_rounded),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  horizontalTitleGap: 3,
                                  leading: Icon(Icons.calendar_month_outlined),
                                  title: Text(
                                    'Sunday, 22 Dec 2019',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  subtitle: Text(
                                    '10:00 AM - 2:00 PM',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  horizontalTitleGap: 3,
                                  leading: Icon(Icons.location_on_outlined),
                                  title: Text(
                                    'Hard Rock Cafe',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  subtitle: Text(
                                    '1501 Broadway,New York, NY 10036, USA',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  horizontalTitleGap: 3,

                                  //minLeadingWidth: 10,
                                  leading: Icon(Icons.people_alt_outlined),
                                  title: Text(
                                    'Going',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Container(
                                      height: 40,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: img.length,
                                          itemBuilder: ((context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                backgroundImage:
                                                    AssetImage(img[index]),
                                                radius: 20,
                                                backgroundColor: Colors.red,
                                              ),
                                            );
                                          })),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    'Detail',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(
                                    'Featuring bands from the local music scene, IGNITE! Music Festival aims to bring the best of Americans music to everyone',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'JOIN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: <Color>[
                                          Colors.red,
                                          Colors.pink
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                  'Tap to Check Details',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
