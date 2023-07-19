import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: FlutterLogo(),
              title: Text('Drawer$index'),
              autofocus: true,
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Builder(
              builder: (context) {
                return CupertinoButton(
                  child: Text('open deawer'),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  color: Colors.green,
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            Builder(
              builder: (context) {
                return CupertinoButton(
                  child: Text('close deawer'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.green,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
