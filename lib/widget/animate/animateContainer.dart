import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AnimateContainerPage extends StatefulWidget {
  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimateContainer'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.blue, //背景色
            alignment: selected
                ? Alignment.center
                : AlignmentDirectional.topCenter, //child位置
            duration: const Duration(seconds: 2), //动画执行时间
            curve: Curves.fastOutSlowIn, //动画类型，平顺，抖动等
            child: const FlutterLogo(size: 75),
            padding: EdgeInsets.all(30), //child在AnimatedContainer的内边距
            // foregroundDecoration: BoxDecoration(
            //     color: Colors.amberAccent,
            //     shape: BoxShape
            //         .circle), // 有点像android里面的shape(https://chenyu.blog.csdn.net/article/details/108475511)
            // BoxDecoration:实现边框、圆角、阴影、形状、渐变、背景图像
            // ShapeDecoration:实现四边分别指定颜色和宽度、底部线、矩形边色、圆形边色、体育场（竖向椭圆）、 角形（八边角）边色
            // FlutterLogoDecoration:Flutter图片
            // UnderlineTabindicator:下划线
            onEnd: () {
              Fluttertoast.showToast(msg: 'VoidCallback,动画执行结束');
            },
          ),
        ),
      ),
    );
  }
}
