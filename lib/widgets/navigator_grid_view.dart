import 'package:flutter/material.dart';

class NavigatorGridView extends StatelessWidget {
  final List<String> img;

  const NavigatorGridView({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: img.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(img[index]),
              ),
            ),
          ),
        );
      }),
    );
  }
}
