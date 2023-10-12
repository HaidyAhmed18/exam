import 'package:flutter/material.dart';

class Lower extends StatelessWidget {
  const Lower({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          color: Colors.purpleAccent,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
