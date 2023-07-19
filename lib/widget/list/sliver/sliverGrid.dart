import 'dart:math';

import 'package:flutter/material.dart';

class SliverGridPage extends StatefulWidget {
  @override
  _SliverGridPageState createState() => _SliverGridPageState();
}

class _SliverGridPageState extends State<SliverGridPage> {
  var text = '透明度';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            pinned: true, //控制导航条是否跟着一起滚动消失
            expandedHeight: 200, //扩展高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text("头部区域，下拉可放大缩小"),
              background: Icon(Icons.exposure_rounded, color: Colors.yellow),
            )),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, //一行的item数量
                mainAxisSpacing: 10, //item纵向边距
                crossAxisSpacing: 10 //item横向边距
                ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                  color: Color.fromARGB(255, Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256)),
                  child: Icon(Icons.favorite, color: Colors.white));
            }, childCount: 7),
          ),
        ),
        SliverToBoxAdapter(
          child: FilledButton(
            onPressed: () {
              setState(() {
                text =
                    '改变透明度'; //https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg!0x0.webp
              });
            },
            child: Text(text),
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
              style: TextStyle(fontSize: 20),
            ),
          );
        }, childCount: 20))
      ],
    );
  }
}
