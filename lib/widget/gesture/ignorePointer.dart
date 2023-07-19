import 'package:flutter/material.dart';

// 切换widget是否获可以击
class IgnorePointerWidget extends StatefulWidget {
  @override
  _IgnorePointerWidgetState createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {

  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ElevatedButton(
          onPressed: () {
            setIgnoring(!ignoring);
          },
          child: Text(
            ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
          ),
        ),
      ),
      body: Center(
        child: IgnorePointer(
          ignoring: ignoring,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Ignoring: $ignoring'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
