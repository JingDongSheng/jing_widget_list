import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutterRedux"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                    '当前屏幕宽高：${MediaQuery.of(context).size.width}/${MediaQuery.of(context).size.height}')),
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('当前设备方向：${MediaQuery.of(context).orientation}')),
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                    '当前设备是否修改了默认字体：${MediaQuery.of(context).textScaleFactor}')),
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                    '当前设备信息(是否限制动画)：${MediaQuery.of(context).disableAnimations}')),
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                    '当前设备信息(是否限屏幕对比度级别)：${MediaQuery.of(context).platformBrightness}')),
          ],
        ),
      ),
    );
  }
}
