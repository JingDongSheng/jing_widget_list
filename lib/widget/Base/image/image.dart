import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Column(
          children: [
//            Image.file('/手机上的图片路径'),//可以加载设备上的图片
//            Image.memory(bytes),//可以加载内存上的字节数组
            Image.asset(
              'images/01.jpg',
              fit: BoxFit.contain, //契合当前布局
            ), //可以根据当前像素密度，寻找asset文件夹里的不同像素文件
            SizedBox(
              height: 20,
            ),
            Image.network(
              'https://picsum.photos/250?image=9',
              loadingBuilder: (context, child, progress) {
                return progress == null ? child : LinearProgressIndicator();
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
