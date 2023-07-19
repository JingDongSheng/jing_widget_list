import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetWidget extends StatefulWidget {
  @override
  _CupertinoActionSheetWidgetState createState() =>
      _CupertinoActionSheetWidgetState();
}

class _CupertinoActionSheetWidgetState
    extends State<CupertinoActionSheetWidget> {
  var thing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActionSheet'),
        ),
        body: Center(
          child: CupertinoButton(
            child: Text('底部弹窗'),
            onPressed: () {
              showActionPop(context);
            },
            color: Colors.green,
          ),
        ));
  }

  showActionPop(BuildContext context) async {
    thing = await showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text('选择照片来源'),
            message: Text('可以从相机或者直接拍照'),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Text('从相册中选择'),
                isDefaultAction: true,
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Text('拍照'),
                isDestructiveAction: true,
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.of(context)
                    .pop('点击取消了'); //'点击取消了'是返回的数据，可以当成vallcallback的返回
              },
              child: Text('取消'),
            ),
          );
        });
  }
}
