import 'package:flutter/material.dart';

//可以根据屏幕宽高设置控件占用的比例
class FractionallySizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransition'),
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.7,
          heightFactor: 0.2,
          child: Text(
            '设置当前文本宽高分别是屏幕的宽度的70%'
            '，高度是20%',
            style: TextStyle(backgroundColor: Colors.red),
          ),
        ),
      ),
    );
  }
}
