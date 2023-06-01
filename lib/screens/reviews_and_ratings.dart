import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:forms_ui/widgets/reviews_rating_list.dart';

class ReviewsAndRatingScreen extends StatelessWidget {
  const ReviewsAndRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReviewsRatingList(
                title: 'Saad Nadeem',
                subtitle: '27 Oct 2022',
                review:
                    'He seemed good and the quality of the app was good, but I wish more time was spent discussing the right solution for my specific needs rather than jumping right into building.',
                img: 'images/p1.jpg'),
            ReviewsRatingList(
                title: 'brandonpeck679',
                subtitle: '20 Oct 2022',
                review:
                    'He is very communicative, and even had some great ideas to make my app even more user friendly. Highly recommend.',
                img: 'images/p2.jpg'),
            ReviewsRatingList(
                title: 'richardjay808',
                subtitle: '17 Sep 2022',
                review:
                    'A great experience! He is super knowledgeable, communicative and really great at implementing everything we have needed.',
                img: 'images/p3.jpg'),
            ReviewsRatingList(
                title: 'taxlab6275',
                subtitle: '14 Aug 2022',
                review:
                    'The second phase of the app development went very quickly and smoothly. I’m excited to see the finished product.',
                img: 'images/p4.jpg'),
            ReviewsRatingList(
                title: 'cbcasemgmt336',
                subtitle: '19 Jun 2022',
                review: 'Well experienced and fast on delivery.',
                img: 'images/p5.jpg'),
            ReviewsRatingList(
                title: 'richardjay808',
                subtitle: '27 Jan 2022',
                review:
                    'The seller was knowledgeable and attentive to my request for application service. I look forward to continued collaborations.',
                img: 'images/p6.jpg'),
          ],
        ),
      ),
    );
  }
}
