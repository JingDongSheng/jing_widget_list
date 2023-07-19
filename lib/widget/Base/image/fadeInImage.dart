import 'package:flutter/material.dart';

//加载图片占位图
class FadeInImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage'),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/jds.gif', //加载之前的，可以使用
          image: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
