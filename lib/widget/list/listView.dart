import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListViewWidget extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Fluttertoast.showToast(msg: '点击Entry A');
            },
            child: Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
//      Container(
//        height: 20,
//        width: double.maxFinite,
//        color: Colors.blue,
//      ),
//      ListView.builder(
//          padding: const EdgeInsets.all(8),
//          itemCount: entries.length,
//          itemBuilder: (BuildContext context, int index) {
//            return Container(
//              height: 50,
//              color: Colors.amber[colorCodes[index]],
//              child: Center(child: Text('Entry ${entries[index]}')),
//            );
//          }
//      ),
//      Container(
//        height: 20,
//        width: double.maxFinite,
//        color: Colors.blue,
//      ),
//      //带分割线
//      ListView.separated(
//        padding: const EdgeInsets.all(8),
//        itemCount: entries.length,
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//            height: 50,
//            color: Colors.amber[colorCodes[index]],
//            child: Center(child: Text('Entry ${entries[index]}')),
//          );
//        },
//        separatorBuilder: (BuildContext context, int index) => const Divider(),
//      ),
    );
  }
}
