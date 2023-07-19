import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//动态调整间距，伴随动画
class AnimatedPaddingWidget extends StatefulWidget {
  @override
  _AnimatedPaddingWidgetState createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  var _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            AnimatedPadding(
              padding: EdgeInsets.fromLTRB(_value, 0, _value, 0),
              duration: Duration(seconds: 2),
              child: Container(
                width: double.maxFinite,
                height: 200,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CupertinoButton(
              child: Text('调整边距'),
              onPressed: () {
                setState(() {
                  // ignore: unnecessary_statements
                  _value = _value < 100.0 ? _value + 20 : _value - 20;
                });
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
