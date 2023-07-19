import 'package:flutter/material.dart';

//按像素指定控件大小
class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeBox'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: FilledButton(
                onPressed: (){},
                child: Text('button1111111111111111111'),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: FilledButton(
                onPressed: (){},
                child: Text('button1111111111111111111'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
