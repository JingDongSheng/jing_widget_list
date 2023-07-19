import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexStackWidget extends StatefulWidget {
  @override
  _IndexStackWidgetState createState() => _IndexStackWidgetState();
}

class _IndexStackWidgetState extends State<IndexStackWidget> {
  int _indexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexStack'),
      ),
      body: Column(
        children: [
          IndexedStack(
            index: _indexValue,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.amber,
              ),
            ],
          ),
          CupertinoButton(
              child: Text('点击'),
              onPressed: () {
                setState(() {
                  _indexValue = 1;
                });
              }),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('都是层布局控件， 可以在一个控件上面放置另一个控件，'
                '但唯一不同的是IndexedStack在同一时刻只能显示子控件中的一个控件，'
                '通过Index属性来设置显示的控件'),
          )
        ],
      ),
    );
  }
}
