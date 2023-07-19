import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Table(
            border: TableBorder.all(
                width: 2.0, color: Colors.black, style: BorderStyle.solid),
            children: [
              TableRow(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                      height: 200,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                    flex: 1,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height: 50,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
