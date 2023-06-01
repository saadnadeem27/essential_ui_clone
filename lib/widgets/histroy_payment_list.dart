import 'package:flutter/material.dart';

class HistroyPaymentList extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cash;
  final String dateTime;
  final String img;

  const HistroyPaymentList(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.cash,
      required this.dateTime,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: ListTile(
            minLeadingWidth: 20,
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(img),
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      cash,
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subtitle,
                      style:
                          TextStyle(color: Color.fromARGB(255, 143, 138, 138)),
                    ),
                    Text(
                      dateTime,
                      style:
                          TextStyle(color: Color.fromARGB(255, 143, 138, 138)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
