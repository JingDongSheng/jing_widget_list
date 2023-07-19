import 'dart:math';

import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatefulWidget {
  @override
  _ShaderMaskWidgetState createState() => _ShaderMaskWidgetState();
}

class _ShaderMaskWidgetState extends State<ShaderMaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
                child: Text(
                  '看我多秀，你行吗？',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                shaderCallback: (bounds) {
                  //RadialGradient以 center 为圆环中心，radius 为半径宽度逐层渐变
                  return RadialGradient(
                          colors: [
                        Colors.yellow,
                        Colors.deepOrange,
                      ],
                          radius: 1.0,
                          center: Alignment.topLeft,
                          tileMode: TileMode.mirror)
                      .createShader(bounds);
                }),
            SizedBox(
              height: 40,
            ),
            ShaderMask(
              //其中 begin 和 end 用于开始时与结束时的两个锚的线性渐变
              shaderCallback: (rect) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.deepOrange.withOpacity(0.6),
                  Colors.yellow,
                  Colors.green
                ],
                stops: [0.2, 0.5, 0.9],
              ).createShader(rect),
              child: Text(
                '看我多秀，你行吗？',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //2D 镭射扫描渐变，其中 center 为镭射扫描中心；startAngle 和 endAngle 分别为扫描的开始和结束的弧度
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return SweepGradient(
                    colors: [
                      Colors.deepOrange.withOpacity(0.6),
                      Colors.yellow,
                      Colors.green
                    ],
                    stops: [0.3, 0.6, 0.9],
                    center: Alignment.center,
                  ).createShader(bounds);
                },
                child: Text(
                  '看我多秀，你行吗？',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
            SizedBox(
              height: 40,
            ),
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return SweepGradient(
                    colors: [
                      Colors.deepOrange.withOpacity(0.6),
                      Colors.yellow,
                      Colors.green
                    ],
                    startAngle: pi * 0.5,
                    endAngle: 2 * pi * 0.6,
                    center: Alignment.center,
                  ).createShader(bounds);
                },
                child: Text(
                  '看我多秀，你行吗？',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
