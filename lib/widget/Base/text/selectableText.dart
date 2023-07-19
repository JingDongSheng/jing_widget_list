import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SelectableText'),
      ),
      body: Column(
        children: [
          SelectableText(
            '你好吗，你在哪？',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(40)),
          SelectableText.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'world',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(40)),
          Container(
            child: Text('上面两端文字是可选中复制的文本'),
            color: Colors.green,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
          )
        ],
      ),
    );
  }
}
