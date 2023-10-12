import 'package:flutter/material.dart';

class Upper extends StatelessWidget {
  const Upper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          color: Colors.pink,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
