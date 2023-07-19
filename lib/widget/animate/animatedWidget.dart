import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AnimatedWidgetPage extends StatefulWidget {
  @override
  _AnimatedWidgetPageState createState() => _AnimatedWidgetPageState();
}

class _AnimatedWidgetPageState extends State<AnimatedWidgetPage> with TickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> tweenAnimation;
  late AnimationController tweenController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    tweenController = AnimationController(duration: Duration(seconds: 4),vsync: this);
    tweenAnimation = CurvedAnimation(parent: tweenController, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          tweenController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          tweenController.forward();
        }
      });
    tweenController.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    tweenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonTransitionWidget(width: _controller),
            TweenTransitionWidget(animation: tweenAnimation,),
          ],
        ),
      ),
    );
  }
}

class TweenTransitionWidget extends AnimatedWidget {
  const TweenTransitionWidget({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: Image.asset('images/01.jpg'),
        ),
      ),
    );
  }
}

class ButtonTransitionWidget extends AnimatedWidget{

  @override
  Widget build(BuildContext context) {
    //需要添加动画的widget
    return FilledButton(
        onPressed: (){
          Fluttertoast.showToast(msg: '点击了按钮');
        },
      child: Text('click me'),
    );
  }

  //通知机制，会通知widget更新的一些数值，比如动画相关的
  ButtonTransitionWidget({width}) :super(listenable: width);

  //添加getter，能够在widget中调用listenable
  Listenable get width => listenable;
}



