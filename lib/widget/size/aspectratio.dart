import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: double.infinity,
        height: 100.0,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.green,
          ),
        ),
      )
    );
  }
}
