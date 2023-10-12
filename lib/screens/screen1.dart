import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatefulWidget {
  static const String routeName = "one";

  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int index = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/photo.jpg")),
                SizedBox(width: 10),
                Text(
                  "Moody",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                badges.Badge(
                  badgeContent: Text(''),
                  child: Icon(Icons.add_alert_rounded),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Hello,"),
                SizedBox(width: 5),
                Text(
                  "Sara Rose",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "How are you feeling today?",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/love.jpg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text("Love")],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/happy.jpg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text("Cool")],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/smile.jpg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text("Happy")],
                      )
                    ],
                  ),
                ),
                //SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/sad.jpg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text("Sad")],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Feature",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See More",
                      style: TextStyle(color: Colors.green),
                    ),
                    Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.green,
                    )
                  ],
                ),
              ],
            ),
            Container(
              child: CarouselSlider(
                items: image
                    .map((item) => Container(
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Exercise",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See More",
                      style: TextStyle(color: Colors.green),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.green,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Image(
                          image: AssetImage('assets/images/relaxing.png'))),
                  Expanded(
                      child: Image(
                          image: AssetImage('assets/images/meditation.png'))),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Image(
                  image: AssetImage('assets/images/beathing.png'),
                )),
                Expanded(
                    child: Image(image: AssetImage('assets/images/yoga.png'))),
              ],
            ),
          ]),
        ),
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
                Navigator.pushNamed(context, Screen2.routeName);
              },
              child: Icon(Icons.grid_view_rounded),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
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
    );
  }
}

final List<String> image = [
  'assets/images/photo1.jpg',
];
