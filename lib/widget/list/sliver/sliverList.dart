import 'package:flutter/material.dart';

class SliverListPage extends StatefulWidget {
  @override
  _SliverListPageState createState() => _SliverListPageState();
}

class _SliverListPageState extends State<SliverListPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('SliverList'),
          pinned: true,
          expandedHeight: 200, //sliver的高度
          flexibleSpace: const FlexibleSpaceBar(
            background: FlutterLogo(),
          ),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            color: Colors.yellow[100 * (index % 9 + 1)],
            height: 80,
            alignment: Alignment.center,
            child: Text(
              "Item $index",
              style: TextStyle(fontSize: 30),
            ),
          );
        }, childCount: 20))
      ],
    );
  }
}
