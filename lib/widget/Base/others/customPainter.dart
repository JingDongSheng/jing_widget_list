import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPainterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomPainter'),
      ),
      body: Center(
        child: CustomPaint(
          painter: MyCustomPainter(),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  Paint _paint = Paint()
    ..color = Colors.red
    ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    var points = [
      Offset(0, 0),
      Offset(size.width / 2, size.height / 2),
      Offset(size.width, size.height),
    ];

    canvas.drawPoints(PointMode.points, points, _paint);

    //点
    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), _paint);

    //线
    var _path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(_path, _paint);

    //圆形
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 20, _paint);

    //椭圆
    canvas.drawOval(Rect.fromLTRB(0, 0, size.width, size.height / 2), _paint);

    //弧形
    canvas.drawArc(
        Rect.fromLTRB(0, 0, size.width, size.height), 0, 140, true, _paint);

    //圆角矩形
    canvas.drawRRect(
        RRect.fromLTRBR(0, 0, size.width, size.height, Radius.circular(10)),
        _paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
