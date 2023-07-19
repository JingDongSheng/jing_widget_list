import 'package:flutter/material.dart';

//添加相对位置
class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: const Align(
            alignment: Alignment(0.2, 0.7), //x,y轴相对父widget的位置
            child: FlutterLogo(
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
