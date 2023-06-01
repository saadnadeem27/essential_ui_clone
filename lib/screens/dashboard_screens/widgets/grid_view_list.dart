import 'package:flutter/material.dart';

const kTstyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

class GridViewList extends StatelessWidget {
  final double fiberIntake;
  final double proteinIntake;
  final double carbsIntake;
  final double calciumIntake;
  final double fatIntake;
  final double vitaminsIntake;

  const GridViewList(
      {super.key,
      required this.fiberIntake,
      required this.proteinIntake,
      required this.calciumIntake,
      required this.carbsIntake,
      required this.fatIntake,
      required this.vitaminsIntake});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 3,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fiberIntake.toString(),
                  style: kTstyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Fiber"),
                Divider(
                  color: Colors.blue,
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  proteinIntake.toString(),
                  style: kTstyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Protein"),
                Divider(
                  color: Colors.green,
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  carbsIntake.toString(),
                  style: kTstyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Carbs"),
                Divider(
                  color: Colors.pink,
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  calciumIntake.toString(),
                  style: kTstyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Calcium"),
                Divider(
                  color: Colors.yellow,
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fatIntake.toString(),
                  style: kTstyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Fat"),
                Divider(
                  color: Colors.red,
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  vitaminsIntake.toString(),
                  style: kTstyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Vitamins"),
                Divider(
                  color: Colors.deepPurple,
                  height: 30,
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
