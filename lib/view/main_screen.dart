import 'package:flutter/material.dart';
import 'package:starbucks_cloncoding/widget/my_indicator.dart';
import 'package:starbucks_cloncoding/widget/my_score.dart';
import 'package:starbucks_cloncoding/widget/option_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return const Column(
              children: [
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ],
            );
          },
        ),
      ),
    ]));
  }
}
