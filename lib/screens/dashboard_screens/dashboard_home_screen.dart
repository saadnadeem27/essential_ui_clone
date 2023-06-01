import 'package:flutter/material.dart';
import 'package:forms_ui/screens/dashboard_screens/widgets/grid_view_data_set_list.dart';

const selectedColor = Colors.pink;
const unselectedColor = Color.fromARGB(255, 84, 57, 139);

class DashboardHomeScreen extends StatefulWidget {
  const DashboardHomeScreen({super.key});

  @override
  State<DashboardHomeScreen> createState() => _DashboardHomeScreenState();
}

class _DashboardHomeScreenState extends State<DashboardHomeScreen> {
  GridViewDataSetList gvdslist = GridViewDataSetList();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .60,
                color: Color.fromRGBO(32, 9, 94, 1),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gvdslist.myPieChart(context, currentIndex),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 0;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                //padding: EdgeInsets.all(15),
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 5,
                                color: currentIndex == 0
                                    ? selectedColor
                                    : unselectedColor,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.breakfast_dining_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Breakfast',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 1;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                // padding: EdgeInsets.all(15),
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 5,
                                color: currentIndex == 1
                                    ? selectedColor
                                    : unselectedColor,

                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.lunch_dining_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Lunch',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 2;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                //padding: EdgeInsets.all(15),
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 5,

                                color: currentIndex == 2
                                    ? selectedColor
                                    : unselectedColor,

                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.dinner_dining_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Dinner',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 3;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width / 5,
                                padding: EdgeInsets.all(15),
                                color: currentIndex == 3
                                    ? selectedColor
                                    : unselectedColor,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.food_bank_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Snack',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .35,
              ),
            ],
          ),
          Container(
              height: MediaQuery.of(context).size.height * .3,
              margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: MediaQuery.of(context).size.height * .55,
                  bottom: MediaQuery.of(context).size.height * .1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color.fromARGB(255, 85, 82, 82),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(2, 1.5),
                  ),
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(-2, 1.5),
                    blurRadius: 1,
                  ),
                ],
              ),
              child: gvdslist.gridViewList[currentIndex]),
        ],
      ),
    );
  }
}
