import 'package:flutter/material.dart';

//页面切换过度
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero')),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'imgHero',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'images/01.jpg',
                fit: BoxFit.cover,
                width: 300,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => NewPage(),
                // settings: RouteSettings(isInitialRoute: true),
                fullscreenDialog: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NewPage')),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  child: Hero(
                    tag: 'imgHero',
                    child: Image.asset(
                      'images/01.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text('阿斯达大所大所多'),
          SizedBox(height: 30),
          Text('阿斯达大所大所多'),
          SizedBox(height: 30),
          Text('阿斯达大所大所多'),
          SizedBox(height: 30),
          Text('阿斯达大所大所多'),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
