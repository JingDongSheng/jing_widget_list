import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  @override
  _SwitchListTileWidgetState createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {

  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchListTile'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20 ,right: 20 ,top: 100),
        child: SwitchListTile(
          title: Text('点击选中'),
          secondary: Icon(Icons.ac_unit),
          controlAffinity: ListTileControlAffinity.leading,
          value: _check,
          onChanged: (value){
            setState(() {
              _check = value;
            });
          },
          activeColor: Colors.blue,
          tileColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
