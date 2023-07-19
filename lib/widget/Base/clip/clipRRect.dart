import 'package:flutter/material.dart';

//裁剪矩形
class ClipRRectPage extends StatefulWidget {
  @override
  _ClipRRectPageState createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            clipBehavior: Clip.hardEdge,
            child: Image.asset('images/01.jpg'),
          ),
        ),
      ),
    );
  }
}
