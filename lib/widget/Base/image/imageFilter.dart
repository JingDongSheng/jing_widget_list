import 'dart:ui';
import 'package:flutter/material.dart';

//对图片进行旋转、倾斜、模糊的操作
class ImageFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImageFilter')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //高斯模糊效果
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), //模糊的程度
            child: Image.asset(
              "assets/images/02.jpg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                //第一层 来一个背景
                Positioned.fill(
                  child: Image.asset(
                    "images/01.jpg",
                    //图片填充一下
                    fit: BoxFit.fill,
                  ),
                ),
                //第二层居中显示一个昵称
                // BackdropFilter 对底层的所有的Widget者起作用
                //当我们只想作用于中间这小块时
                //可以裁剪一下
                ClipRect(
                  child: BackdropFilter(
                    //高斯模糊度设置
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: buildChildBox(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildChildBox() {
    return Container(
      width: 240,
      height: 180,
      //color 与 decoration 是互斥的
      //color: Colors.white,
      //来个圆角
      decoration: BoxDecoration(
        //颜色来个透明度
        color: Colors.white.withOpacity(0.2),
        //四个圆角
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      //居中一下
      alignment: Alignment.center,
      child: Text(
        "早起的年轻人",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
