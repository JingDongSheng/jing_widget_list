import 'package:flutter/material.dart';

//长按图标提示
class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
      ),
      body: Center(
        child: Tooltip(
          message: '长按图标提示的内容',
          height: 24,
          verticalOffset: 100,
          child: Image.asset(
            'images/01.jpg',
            width: 200,
            height: 100,
          ),
        ),
      ),
    );
  }
}
