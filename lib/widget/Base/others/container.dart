import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        child: Text('Container'),
//        color: Colors.blue,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(80),
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        width: 400,
        height: 200,
      ),
    );
  }
}
