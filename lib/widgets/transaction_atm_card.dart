import 'package:flutter/material.dart';

class TransactionATMCard extends StatelessWidget {
  final Color color1;
  final Color color2;

  TransactionATMCard({super.key, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CREDIT CARD',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Image.asset(
                    'images/mcard.png',
                    height: 25,
                    width: 35,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'XXXX XXXX XXXX 5838',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Holder',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'Peter Wilson',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expires',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        '08/20',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        '846',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
