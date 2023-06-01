import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsRatingList extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  final String review;

  ReviewsRatingList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.review,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              minVerticalPadding: 0,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  img,
                ),
              ),
              title: Text(title),
              subtitle: Text(subtitle),
              trailing: RatingBar.builder(
                itemSize: 17,
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                review,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
