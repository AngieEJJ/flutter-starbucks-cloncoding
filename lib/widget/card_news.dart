// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardNews extends StatefulWidget {
  CardNews({
    Key? key,
  }) : super(key: key);

  @override
  State<CardNews> createState() => _CardNewsState();
}

class _CardNewsState extends State<CardNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 280,
                width: 300,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/04_01_cardnews.png',
                    ),
                    const Text('dd')
                  ],
                ),
              ),
            );
          }),
    );
  }
}
