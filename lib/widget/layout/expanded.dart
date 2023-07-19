import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 60,
                color: Colors.amberAccent,
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                height: 60,
                color: Colors.blueAccent,
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                height: 60,
                color: Colors.greenAccent,
              ),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
