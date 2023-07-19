import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: '这是一个'),
                  TextSpan(
                      text: '特殊',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          textBaseline: TextBaseline.ideographic)),
                  TextSpan(text: '字符'),
                ]),
          ),
          SizedBox(
            height: 40,
          ),
          Text('RichText可以一句话里显示多种样式，文字组合')
        ],
      ),
    );
  }
}
