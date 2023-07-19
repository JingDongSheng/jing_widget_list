import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: LimitedBox(
              maxHeight: 100,
              maxWidth: 200,
              child: CupertinoButton(
                child: Text("按钮"),
                color: Colors.green,
                onPressed: () {  },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('可以设置不受约束的控件宽高,\n '
              '当前CupertinoButton不受束缚是要填充整个页面的,LimitedBox限制了最大宽高')
        ],
      ),
    );
  }
}
