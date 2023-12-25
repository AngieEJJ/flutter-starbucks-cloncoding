import 'package:flutter/material.dart';
import 'package:starbucks_cloncoding/widget/card_news.dart';
import 'package:starbucks_cloncoding/widget/first_event_banner.dart';
import 'package:starbucks_cloncoding/widget/my_indicator.dart';
import 'package:starbucks_cloncoding/widget/my_score.dart';
import 'package:starbucks_cloncoding/widget/option_menu.dart';
import 'package:starbucks_cloncoding/widget/second_sirenorder_banner.dart';
import 'package:starbucks_cloncoding/widget/text_banner.dart';
import 'package:starbucks_cloncoding/widget/third_christmas_banner.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_iphone),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_mall),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Other',
            )
          ]),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: true,
          expandedHeight: 220,
          flexibleSpace: FlexibleSpaceBar(
            background:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                "assets/images/01-00_topbanner1.png",
              ),
              const Row(
                children: [
                  MyIndicator(),
                  SizedBox(width: 10),
                  MyScore(),
                ],
              ),
            ]),
            centerTitle: true,
            titlePadding: EdgeInsets.zero,
            title: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 9),
                child: OptionMenu()),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            const FirstEventBanner(),
            const SecondSirenorderBanner(),
            const ThirdChristmasBanner(),
            const TextBanner(),
            CardNews(),
          ]),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        elevation: 0,
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.delivery_dining,
          color: Colors.white,
        ),
      ),
    );
  }
}
