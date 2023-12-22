import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) =>
          Image.asset('assets/images/02_02_announcement.jpeg'),
    );
  }
}
