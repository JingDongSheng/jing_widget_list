import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatefulWidget {
  @override
  _ListWheelScrollViewWidgetState createState() =>
      _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelScrollView'),
      ),
      body: ListWheelScrollView.useDelegate(
        itemExtent: 150,
//        diameterRatio: 1.5,//调整圆筒弧度，diameterRatio越小表示圆筒越圆，默认值是2
//        squeeze: 6,//显示几个item
//        offAxisFraction: 1,//属性表示车轮水平偏离中心的程度
//        useMagnifier: true,//是否启用放大镜
//        magnification: 2,//放大倍率
        childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color: Colors.primaries[index % 10],
                alignment: Alignment.center,
                child: Text('$index'),
              );
            },
            childCount: 60),
      ),
    );
  }
}
