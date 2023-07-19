import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 50.0 //最小高度为50像素
                ),
            child: Container(
              height: 5.0,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20),
          Text('用于对子组件添加宽高的约束，'
              '如果某一个组件有多个父级ConstrainedBox限制，'
              '取父子中相应数值较大的')
        ],
      ),
    );
  }
}
