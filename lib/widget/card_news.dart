// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:starbucks_cloncoding/model/card_content.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CardContent> cardContentList = [
      CardContent(
          imgPath: 'assets/images/04_01_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_02_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_03_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_04_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_05_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_06_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_07_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_08_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_09_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_10_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_11_cardnews.png',
          title: 'test',
          subtitle: 'test'),
      CardContent(
          imgPath: 'assets/images/04_12_cardnews.png',
          title: 'test',
          subtitle: 'test'),
    ];

    return Container(
      height: 270,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardContentList.length,
          itemBuilder: (context, index) {
            final CardContent cardContent = cardContentList[index];

            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 280,
                width: 300,
                child: Column(
                  children: [
                    Image.asset(
                      cardContent.imgPath,
                    ),
                    Text(cardContent.title),
                    Text(cardContent.subtitle),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
