import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//法律条文dialog
class AboutDialogWidget extends StatefulWidget {
  @override
  _AboutDialogWidgetState createState() => _AboutDialogWidgetState();
}

class _AboutDialogWidgetState extends State<AboutDialogWidget> {
  @override
  void initState() {
    super.initState();
    this.initMyLibrary();
  }

  void initMyLibrary() {
    LicenseRegistry.reset();
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(<String>['ACustomLibrary'], '''
  Copyright 2016 Woolha.com. All rights reserved.
  
     * Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
   
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS''');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutDialog'),
      ),
      body: Center(
        child: FilledButton(
          child: Text('Show AboutDialog'),
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationIcon: FlutterLogo(),
              applicationName: 'Woolha.com App',
              applicationVersion: '0.0.1',
              applicationLegalese: '©2020 Woolha.com',
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('This is an about dialog in Flutter')
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
