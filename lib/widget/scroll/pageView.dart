import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  var _pageIndex1 = 1;
  var _pageIndex2 = 0;
  List<Widget> _pageList1 = [];
  List<Widget> _pageList2 = [];
  late PageController _pageController1;
  late PageController _pageController2;
  late List<Color> _colors;

  @override
  void initState() {
    super.initState();
    _pageController1 = PageController(
      initialPage: _pageIndex1,
      viewportFraction: 0.8,
    );

    _pageController2 = PageController(
      initialPage: _pageIndex2,
      viewportFraction: 0.6,
    );

    _colors = [Colors.orange, Colors.pink, Colors.deepPurple];

    for (var i = 0; i < _colors.length; i++) {
      _pageList1.add(
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(
                msg: '点击页面index：$i', gravity: ToastGravity.BOTTOM);
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              color: _colors[i],
              child: Center(
                child: Text(
                  'page$i',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      );

      _pageList2.add(
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            color: _colors[i],
            child: Center(
              child: Text(
                'page$i',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pageController1.dispose();
    _pageController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text('横滑动'),
                Container(
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController1,
                    children: _pageList1,
                    onPageChanged: (index) {
                      _pageIndex1 = index;
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text('竖滑动'),
                Container(
                  height: 200,
                  child: PageView.builder(
                    itemCount: _pageList2.length,
                    scrollDirection: Axis.vertical,
                    controller: _pageController2,
                    itemBuilder: (context, index) {
                      return _pageList2[index];
                    },
                    onPageChanged: (index) {
                      _pageIndex2 = index;
                      Fluttertoast.showToast(
                          msg: '当前页面index：$index',
                          gravity: ToastGravity.BOTTOM);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
