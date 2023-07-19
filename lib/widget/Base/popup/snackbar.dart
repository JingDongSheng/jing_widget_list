import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  @override
  _SnackBarWidgetState createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Builder(
              builder: (context) {
                return CupertinoButton(
                  child: Text('Show SnackBar'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Row(
                      children: [
                        Icon(Icons.memory),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(child: Text('SnackBar')),
                      ],
                    )));
                  },
                  color: Colors.green,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
