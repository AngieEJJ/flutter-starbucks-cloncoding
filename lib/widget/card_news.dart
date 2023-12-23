// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:starbucks_cloncoding/model/card_news.dart';

class CardNews extends StatefulWidget {
  CardNews({
    Key? key,
  }) : super(key: key);

  final List<CardContents>? list = [];

  @override
  State<CardNews> createState() => _CardNewsState();
}

class _CardNewsState extends State<CardNews> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset('assets/images/04_01_cardnews.png'),
    );
  }
}
