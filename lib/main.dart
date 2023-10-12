import 'package:exam/screens/Screen2.dart';
import 'package:exam/screens/Screen3.dart';
import 'package:exam/screens/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Screen1.routeName,
      routes: {
        Screen1.routeName: (context) => Screen1(),
        Screen2.routeName: (context) => Screen2(),
        Screen3.routeName: (context) => Screen3(),
      },
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
