import 'package:flutter/material.dart';

//裁剪圆或者椭圆
class ClipOvalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: Image.asset('images/01.jpg'),
              clipper: _CircleCliper(),
            ),
            ClipOval(
              child: Image.asset('images/01.jpg'),
              clipper: _OvalCliper(),
            ),
          ],
        ),
      ),
    );
  }
}

class _OvalCliper extends CustomClipper<Rect>{

  @override
  getClip(Size size) {
    return new Rect.fromLTRB(0, 0, 200,  200);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

class _CircleCliper extends CustomClipper<Rect>{

  @override
  getClip(Size size) {
    return new Rect.fromLTRB(10.0, 10.0, size.width - 10.0,  size.height- 10.0);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
