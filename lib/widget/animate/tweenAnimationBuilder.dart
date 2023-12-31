import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  @override
  _TweenAnimationBuilderWidgetState createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimationBuilder'),
      ),
      body: Center(
        child: Column(
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: targetValue),
              duration: const Duration(seconds: 1),
              builder: (BuildContext? context, double? size, Widget? child) {
                return IconButton(
                  iconSize: size,
                  color: Colors.blue,
                  icon: child!,
                  onPressed: () {
                    setState(() {
                      targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                    });
                  },
                );
              },
              child: const Icon(Icons.aspect_ratio),
            ),
            SizedBox(
              height: 40,
            ),
            Text('点击上方图标')
          ],
        ),
      ),
    );
  }
}
