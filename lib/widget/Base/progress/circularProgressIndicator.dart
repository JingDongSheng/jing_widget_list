import 'dart:async';

import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  @override
  _CircularProgressIndicatorWidgetState createState() => _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState extends State<CircularProgressIndicatorWidget> {

  double _pre = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _pre = _pre + 0.05;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CircularProgressIndicator"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/2, //屏幕宽度
              height: MediaQuery.of(context).size.width / 375 * 200/2, //宽高比
              child: FittedBox(
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                ),
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/2, //屏幕宽度
              height: MediaQuery.of(context).size.width / 375 * 200/2, //宽高比
              child: FittedBox(
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  value: _pre,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  backgroundColor: Colors.blue,
                ),
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
