import 'package:flutter/material.dart';

import '../controller/cardWidgets.dart';

class dashScreen extends StatefulWidget {
  const dashScreen({Key? key}) : super(key: key);
  static const String routeNames = 'dashScreen';

  @override
  State<dashScreen> createState() => _dashScreenState();
}

class _dashScreenState extends State<dashScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Dash Screen'),
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: TabBar(
                  isScrollable: true,
                  indicatorPadding: const EdgeInsets.all(10),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(fontSize: 20),
                  labelPadding: const EdgeInsets.only(
                      left: 35, right: 35, top: 10, bottom: 10),
                  indicator: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(20)),
                  controller: _tabController,
                  tabs: const [
                    Text('Day'),
                    Text('Week'),
                    Text('Month'),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                CardWidget(),
                CardWidget(),
                CardWidget(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
