import 'package:flutter/material.dart';

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
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          background: Column(
            children: [
              Image.asset(
                "assets/images/01-00_topbanner1.png",
              ),
              Row(
                children: [
                  const Text('unitl gold level'),
                ],
              ),
            ],
          ),
          centerTitle: true,
          titlePadding: EdgeInsets.zero,
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: [
              Icon(Icons.mail_outlined, size: 15),
              Text(
                'What\'s New',
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
              SizedBox(width: 20),
              Icon(Icons.confirmation_num_outlined, size: 15),
              Text(
                'Coupon',
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
              Spacer(),
              Icon(Icons.notifications_outlined, size: 15),
            ]),
          ),
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
