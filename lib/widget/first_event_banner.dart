// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FirstEventBanner extends StatelessWidget {
  const FirstEventBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset('assets/images/01_01_2023_winter_e-frequency.png'),
    );
  }
}
