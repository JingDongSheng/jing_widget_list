import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  int acceptedData = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable<int>(
              // Data is the value this Draggable stores.
              data: 10,
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.lightGreenAccent,
                child: const Center(
                  child: Text('Draggable'),
                ),
              ),
              //停留在原地的背景
              feedback: Container(
                color: Colors.deepOrange,
                height: 100,
                width: 100,
                child: const Icon(Icons.directions_run),
              ),
              //当Draggable正在拖拽
              childWhenDragging: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.pinkAccent,
                child: const Center(
                  child: Text('Child When Dragging'),
                ),
              ),
            ),

            //拖拽后的着陆区域
            DragTarget<int>(
              //目标值应该如何构建
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.cyan,
                  child: Center(
                    child: Text('Value is updated to: $acceptedData'),
                  ),
                );
//              return Container(
//                color: Colors.deepOrange,
//                height: 100,
//                width: 100,
//                child: const Icon(Icons.directions_run),
//              );
              },
              //着陆时调用
              onAccept: (int data) {
                setState(() {
                  acceptedData += data;
                });
              },
              onWillAccept: (value) {
                //拖拽区域是否接受Draggable的数据
                return true;
              },
              onLeave: (value) {
                //Draggable离开的时候调用
              },
            ),
          ],
        ),
      ),
    );
  }
}
