import 'package:flutter/material.dart';

class DismissiableWidget extends StatefulWidget {
  @override
  _DismissiableWidgetState createState() => _DismissiableWidgetState();
}

class _DismissiableWidgetState extends State<DismissiableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissiable'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          child: ListTile(
            title: Text('item'),
          ),
          background: Container(
            color: Colors.green,
          ),
          key: ValueKey('dismissiable'),
          direction: DismissDirection.horizontal,
        );
      }),
    );
  }
}
