import 'package:flutter/material.dart';

class OptionMenu extends StatelessWidget {
  const OptionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Icon(Icons.mail_outlined, size: 15),
      SizedBox(width: 3),
      Text(
        'What\'s New',
        style: TextStyle(color: Colors.black, fontSize: 11),
      ),
      SizedBox(width: 15),
      Icon(Icons.confirmation_num_outlined, size: 15),
      SizedBox(width: 3),
      Text(
        'Coupon',
        style: TextStyle(color: Colors.black, fontSize: 11),
      ),
      Spacer(),
      Icon(Icons.notifications_outlined, size: 15),
    ]);
  }
}
