import 'package:flutter/material.dart';

//可将widget拖入视图，并可以滚动
class DraggablescrollableSheetWidget extends StatefulWidget {
  @override
  _DraggableScrollableSheetWidgetState createState() =>
      _DraggableScrollableSheetWidgetState();
}

class _DraggableScrollableSheetWidgetState
    extends State<DraggablescrollableSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DraggableScrollableSheet'),
      ),
      body: Stack(
        children: [
          Center(child: Text('下方widget可以拖动')),
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            maxChildSize: 0.8,
            minChildSize: 0.2,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('Three-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
