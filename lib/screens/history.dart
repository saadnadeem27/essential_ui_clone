import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forms_ui/widgets/histroy_payment_list.dart';

class HistroyScreen extends StatelessWidget {
  const HistroyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 218, 218),
      appBar: AppBar(
        title: Text('Payment History'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          HistroyPaymentList(
            title: 'Alice',
            subtitle: 'Cashback',
            cash: '+ \$70',
            dateTime: '20 Oct 2021',
            img: 'images/p1.jpg',
          ),
          HistroyPaymentList(
            title: 'Jessica Park',
            subtitle: 'XXXXXXXXX6585',
            cash: '+ \$80',
            dateTime: '22 Sep 2020',
            img: 'images/p2.jpg',
          ),
          HistroyPaymentList(
            title: 'Lisa',
            subtitle: 'Recharge',
            cash: '- \$50',
            dateTime: '28 Jan 2020',
            img: 'images/p3.jpg',
          ),
          HistroyPaymentList(
            title: 'Rebecca',
            subtitle: 'Credit Card Bill',
            cash: '- \$180',
            dateTime: '04 Oct 2020',
            img: 'images/p4.jpg',
          ),
        ],
      ),
    );
  }
}
