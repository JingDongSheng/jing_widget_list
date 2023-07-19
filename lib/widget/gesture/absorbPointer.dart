import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AbsorbPointerPage extends StatefulWidget {
  @override
  _AbsorbPointerPageState createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  bool absorbing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AbsorbPointer'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AbsorbPointer(
                absorbing: absorbing,
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: '点击了');
                  },
                  child: Text('点我吧'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    absorbing = !absorbing;
                  });
                },
                child: Text('改变状态'),
              ),
              Padding(
                  padding: EdgeInsets.all(40),
                  child: Text('在使用AbsorbPointer时，改变absorbing属性可以控制其子空间是否可以点击')),
            ],
          ),
        ),
      ),
    );
  }
}
