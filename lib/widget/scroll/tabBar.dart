import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() {
      Fluttertoast.showToast(msg: '当前页数：${_tabController.index}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text('tab1'),
            ),
            Tab(
              child: Text('tab2'),
            ),
            Tab(
              child: Text('tab3'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Image.asset(
            'images/01.jpg',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'images/02.jpg',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'images/opisnavx-logo.png',
            fit: BoxFit.contain,
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}
