import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeArea'),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
              100,
              (index) => Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'this is some text$index',
                    style: TextStyle(fontSize: 14, color: Colors.black12),
                  ))),
        ),
      ),
    );
  }
}
