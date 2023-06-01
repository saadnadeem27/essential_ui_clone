import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/transaction_atm_card.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TransactionATMCard(
                  color1: Colors.pink,
                  color2: Colors.deepPurple,
                ),
                TransactionATMCard(
                  color1: Color.fromARGB(255, 182, 12, 162),
                  color2: Color.fromARGB(255, 56, 11, 180),
                ),
                TransactionATMCard(
                  color1: Colors.orange,
                  color2: Colors.pink,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                'ADD NEW CARD',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
