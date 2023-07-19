import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActivityIndicator'),
      ),
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 30,
          animating: true,
        ),
      ),
    );
  }
}
