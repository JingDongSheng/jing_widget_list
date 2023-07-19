import 'package:flutter/material.dart';

//子空间填充父控件
class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width, //屏幕宽度
          height: MediaQuery.of(context).size.width / 375 * 200, //宽高比
          color: Colors.yellow,
          child: FittedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset('images/01.jpg'),
            ),
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
