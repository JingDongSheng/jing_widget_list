import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  @override
  _CheckboxListTileWidgetState createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20 ,right: 20 ,top: 100),
        child: CheckboxListTile(
          title: Text('点击选中'),
          secondary: Icon(Icons.ac_unit),
          controlAffinity: ListTileControlAffinity.leading,
          value: _check,
          onChanged: (value){
           setState(() {
             _check = value!;
           });
          },
          activeColor: Colors.blue,
          checkColor: Colors.red,
          tileColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
