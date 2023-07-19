import 'package:flutter/material.dart';

//Spacer 添加到其他widget之间就会撑满剩余空间，他的flex属性，可以是指权重
class SpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                Spacer(
                  flex: 3,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('设置控件之间的间距，可以按flex设置')
          ],
        ),
      ),
    );
  }
}
