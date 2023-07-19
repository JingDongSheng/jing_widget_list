import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: Center(
        child: Wrap(
          children: [
            FilledButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text(
                'AlertDialog',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                showCupertinoAlertDialog(context);
              },
              child: Text(
                'CupertinoAlertDialog',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        //是否可以单击外部取消显示
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 24.0,
            backgroundColor: Colors.green,
//            shape: CircleBorder(),//圆形
//            shape: StadiumBorder(),//体育场形
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ), //圆角矩形
            //可以是文本，也可以是其他widget
            content: FlutterLogo(),
            title: Center(
                child: Text(
              '标题',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
            actions: <Widget>[
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('确定')),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('取消')),
            ],
          );
        });
  }

  void showCupertinoAlertDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: Text('this is cupertinoAlertDialog'),
            title: Center(
                child: Text(
              '标题',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
            actions: <Widget>[
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('确定')),
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('取消')),
            ],
          );
        });
  }
}
