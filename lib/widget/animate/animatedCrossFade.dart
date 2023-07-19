import 'package:flutter/material.dart';

//切换 Widget 的时候加上动画,有淡入淡出效果，
// 与AnimatedSwitcher的区别就是，AnimatedCrossFade支持两个子元素
class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
      ),
      body: AnimatedCrossFade(
        firstChild: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(80),
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          width: 400,
          height: 200,
        ),
        secondChild: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              clipBehavior: Clip.hardEdge,
              child: Image.asset('images/01.jpg'),
            ),
          ),
        ),
        duration: const Duration(seconds: 3),
        firstCurve: Curves.easeOut,
        secondCurve: Curves.easeIn,
        sizeCurve: Curves.bounceOut,
        crossFadeState: _crossFadeState,
        layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
          return Stack(
            clipBehavior: Clip.none, alignment: Alignment.center,
            children: [
              Positioned(
                key: bottomChildKey,
                child: bottomChild,
                top: 0,
              ),
              Positioned(
                key: topChildKey,
                child: topChild,
              ),
            ],
          );
        },
      ),
    );
  }
}
