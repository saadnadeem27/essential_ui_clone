import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/googlemap.jpg'),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            'Get in Touch',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              helperMaxLines: 3,
                              hintText: 'Message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      colors: [Colors.red, Colors.pink])),
                              child: Center(
                                  child: Text(
                                'SEND',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.pink],
              ),
            ),
            child: Center(
                child: Text(
              'Click to Open',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            )),
          ),
        )
      ]),
    );
  }
}
