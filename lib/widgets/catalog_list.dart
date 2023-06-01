import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogList extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String newPrice;
  final String oldPrice;
  final bool isLiked;

  const CatalogList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath,
      required this.newPrice,
      required this.oldPrice,
      this.isLiked = false});

  @override
  State<CatalogList> createState() => _CatalogListState();
}

class _CatalogListState extends State<CatalogList> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(widget.imagePath))),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 23,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        onPressed: () {
                          isLiked = !isLiked;

                          setState(() {});
                        },
                        icon: isLiked
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                              ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      widget.subtitle,
                      maxLines: 4,
                      style: GoogleFonts.lato(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.newPrice,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.oldPrice,
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingBar.builder(
                    itemSize: 17,
                    initialRating: 4,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
