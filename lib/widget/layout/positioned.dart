import 'package:flutter/material.dart';

//相对位置，要和Stack一起使用
class PositionedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned'),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            color: Color.fromARGB(100, 200, 100, 0),
          ),
          Positioned(
            height: 60,
            left: 10,
            right: 10,
            top: 10,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Color.fromARGB(100, 50, 100, 0),
                child: Center(
                  child: Text(
                    "我设置了左右约束，所以 stack alignment 对我无效",
                    style: TextStyle(color: Color.fromARGB(200, 50, 50, 0)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 200,
            width: 200,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Color.fromARGB(100, 100, 100, 0),
              ),
            ),
          ),
          Positioned(
            height: 100,
            width: 100,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Color.fromARGB(100, 200, 50, 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
