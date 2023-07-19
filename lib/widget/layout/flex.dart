import 'package:flutter/material.dart';

//与expanded类似，按权重分配
class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flex'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 4,
              //可以使用loose ,Container按实际高度100显示
              fit: FlexFit.loose,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.black87,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
          ],
        ));
  }
}
