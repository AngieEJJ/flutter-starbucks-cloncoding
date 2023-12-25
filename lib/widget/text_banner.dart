// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextBanner extends StatelessWidget {
  const TextBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'What\'s New',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        'See all',
        style: TextStyle(fontSize: 14, color: Colors.green),
      ),
    );
  }
}
