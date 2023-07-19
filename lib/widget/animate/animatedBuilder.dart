import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilderPageFul();
  }
}

class AnimatedBuilderPageFul extends StatefulWidget {
  @override
  _AnimatedBuilderPageFulState createState() => _AnimatedBuilderPageFulState();
}

class _AnimatedBuilderPageFulState extends State<AnimatedBuilderPageFul>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedBuilder')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
            child: const Center(
              child: Text('Whee!'),
            ),
          ),
          builder: (BuildContext? context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
