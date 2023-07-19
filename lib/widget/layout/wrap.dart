import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  final widgetList = [
    Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 40,
        width: 80,
        color: Colors.amberAccent,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 40,
        width: 130,
        color: Colors.amberAccent,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 40,
        width: 50,
        color: Colors.amberAccent,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 40,
        width: 180,
        color: Colors.amberAccent,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Column(
        children: [
          //alignment控制布局位置
          //runSpacing上下间距
          //spacing左右间距
          Wrap(
            runSpacing: 10,
            spacing: 30,
            alignment: WrapAlignment.start,
            children: widgetList,
          ),
        ],
      ),
    );
  }
}
