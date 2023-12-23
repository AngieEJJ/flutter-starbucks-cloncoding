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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                  'assets/images/01_01_2023_winter_e-frequency.png'),
            ),
            Image.asset('assets/images/02_01_siren_order.png'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/03_01_chrismas_event.png'),
            ),
            const ListTile(
              title: Text(
                'What\'s New',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'See all',
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ),
            Container(
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
                            Text('dd')
                          ],
                        ),
                      ),
                    );
                  }),
            ),
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
