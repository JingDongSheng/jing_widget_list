import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GridViewWidget extends StatefulWidget {
  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 300,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Fluttertoast.showToast(msg: '点击了$index');
              },
              child: Card(
                color: Colors.amber,
                child: Center(child: Text('$index')),
              ),
            );
          }
      ),
    );
  }
}
