import 'package:flutter/material.dart';

//可拖动item的list view，包含拖动监听
class ReorderableListViewWidget extends StatefulWidget {
  @override
  _ReorderableListViewWidgetState createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  late List<String> names;
  @override
  void initState() {
    super.initState();
    names = <String>[];
    for (int i = 0; i < 50; i++) {
      names.add('吞噬：$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReorderableListView"),
      ),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          //拖动item后刷新列表数据
        },
        children: [
          for (String name in names)
            ListTile(
              key: Key(name),
              title: Text('名称：$name'),
            ),
        ],
      ),
    );
  }
}
