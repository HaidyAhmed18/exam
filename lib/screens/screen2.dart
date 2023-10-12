import 'package:exam/tabs/lower.dart';
import 'package:exam/tabs/upper.dart';
import 'package:flutter/material.dart';

import '../tabs/all_type.dart';
import '../tabs/full_body.dart';
import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  static const String routeName = "two";

  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int index = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/photo2.png")),
                SizedBox(width: 12),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 40,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Hello,Jade",
                            style: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ),
                    Container(
                        height: 40,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Ready to workout",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ))),
                    SizedBox(
                      width: 110,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 326,
                height: 82,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/heart.png",
                                width: 10,
                                height: 10,
                              ),
                              Text(
                                " Heart Rate",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200, fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "81",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "bpm",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                          indent: 4,
                          endIndent: 4,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.list, color: Colors.deepPurple),
                              Text(
                                "To-do",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                "32,5",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "%",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.white,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/fire.png",
                                width: 15,
                                height: 15,
                              ),
                              Text(
                                " Calo",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text(
                                "1000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Cal",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Workout Programs',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(height: 15),
            TabBar(tabs: [
              Text(
                "All Type",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Full Body',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Upper',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Lower',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ]),
            Expanded(
                child: TabBarView(
                    children: [AllType(), FullBody(), Upper(), Lower()]))
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Screen3.routeName);
                },
                child: Image.asset("assets/images/arrow.png",
                    width: 20, height: 20),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
