import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class BookmarkList extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String imagePath;

  const BookmarkList({
    super.key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(imagePath))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.bookmark,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  subtitle1,
                  //maxLines: 4,
                  style: GoogleFonts.lato(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle2,
                  style: TextStyle(color: Color.fromARGB(255, 141, 140, 140)),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
