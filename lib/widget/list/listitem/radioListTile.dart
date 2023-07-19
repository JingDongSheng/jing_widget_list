import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  @override
  _RadioListTileWidgetState createState() => _RadioListTileWidgetState();
}
enum Groceries { pickles, tomato, lettuce }
class _RadioListTileWidgetState extends State<RadioListTileWidget> {

  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20 ,right: 20 ,top: 100),
        child: RadioListTile(
          groupValue: Groceries.pickles,
          title: Text('点击选中'),
          secondary: Icon(Icons.ac_unit),
          controlAffinity: ListTileControlAffinity.leading,
          value: _check,
          onChanged: (value){
            setState(() {
              // _check = value;
            });
          },
          activeColor: Colors.blue,
          tileColor: Colors.amberAccent,
        ),
      ),
    );
  }
}

