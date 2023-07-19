import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FadeTransitionPage extends StatefulWidget {
  @override
  _FadeTransitionPageState createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FadeTransition(
            //   child: Container(
            //     color: Colors.blue,
            //     width: 200.0,
            //     height: 200.0,
            //   ),
            //   opacity: _animation,
            // ),
            SizedBox(
              height: 30,
            ),
            // FadeTransition(
            //   child: FlutterLogo(
            //     size: 50,
            //   ),
            //   opacity: _animation,
            // ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: FilledButton(
                onPressed: () {
                  _controller.forward();
                },
                child: Text('开始动画'),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
