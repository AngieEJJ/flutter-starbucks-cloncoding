import 'package:flutter/material.dart';

class TextBanner extends StatelessWidget {
  final String text;
  final String textButton;

  const TextBanner({super.key, required this.text, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      trailing: TextButton(
          onPressed: () {},
          child: Text(
            textButton,
            style: const TextStyle(fontSize: 14, color: Colors.green),
          )),
    );
  }
}
