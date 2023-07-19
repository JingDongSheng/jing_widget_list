import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlaceHolder"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Placeholder(
            fallbackWidth: 200,
            fallbackHeight: 100,
            strokeWidth: 2,
            color: Colors.amber,
          ),
          SizedBox(
            height: 20,
          ),
          Text('占位控件')
        ],
      ),
    );
  }
}
