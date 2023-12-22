import 'package:flutter/material.dart';

class MyScore extends StatelessWidget {
  const MyScore({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: [
        TextSpan(
            text: '11', style: TextStyle(color: Colors.black, fontSize: 35)),
        TextSpan(
            text: ' /',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
        TextSpan(
            text: ' 25', style: TextStyle(color: Colors.green, fontSize: 20)),
        TextSpan(
            text: '★', style: TextStyle(color: Colors.green, fontSize: 15)),
      ]),
    );
  }
}
