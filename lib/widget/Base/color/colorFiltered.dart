import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorFiltered'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(child: Text('可以改变图片局部的颜色')),
              SizedBox(
                height: 40,
              ),
              Container(
                  color: Colors.grey, child: Image.asset('images/01.jpg')),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
                child: Image.asset('images/01.jpg'),
              )),
              SizedBox(
                height: 60,
              ),
              Container(
                  color: Colors.grey,
                  child: Image.asset('images/opisnavx-logo.png')),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
                child: Image.asset('images/opisnavx-logo.png'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
