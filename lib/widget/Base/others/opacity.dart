import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OpacityPage extends StatefulWidget {
  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  var _opacity = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.greenAccent,
              width: 200,
              height: 200,
            ),
            Opacity(
              opacity: _opacity,
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ),
            Container(
              color: Colors.orange,
              width: 200,
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: FilledButton(
                onPressed: () {
                  if (_opacity == 0.5) {
                    setState(() {
                      _opacity = 1.0;
                    });
                  } else {
                    setState(() {
                      _opacity = 0.5;
                    });
                  }
                },
                child: Text('改变透明度'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
