import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatefulWidget {
  @override
  _InteractiveViewerWidgetState createState() => _InteractiveViewerWidgetState();
}

class _InteractiveViewerWidgetState extends State<InteractiveViewerWidget> with SingleTickerProviderStateMixin {
  final TransformationController _transformationController =
  TransformationController();
  late Animation<Matrix4> _animationReset;
  late AnimationController _controllerReset;

  void _onAnimateReset() {
    _transformationController.value = _animationReset.value;
    if (!_controllerReset.isAnimating) {
      _animationReset?.removeListener(_onAnimateReset);
      // _animationReset = null;
      _controllerReset.reset();
    }
  }

  void _animateResetInitialize() {
    _controllerReset.reset();
    _animationReset = Matrix4Tween(
      begin: _transformationController.value,
      end: Matrix4.identity(),
    ).animate(_controllerReset);
    _animationReset.addListener(_onAnimateReset);
    _controllerReset.forward();
  }

  void _animateResetStop() {
    _controllerReset.stop();
    _animationReset?.removeListener(_onAnimateReset);
    // _animationReset = null;
    _controllerReset.reset();
  }

  void _onInteractionStart(ScaleStartDetails details) {
    if (_controllerReset.status == AnimationStatus.forward) {
      _animateResetStop();
    }
  }

  @override
  void initState() {
    super.initState();
    _controllerReset = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _controllerReset.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteractiveViewer'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.width,
              width: 400,
              child: InteractiveViewer(
                boundaryMargin: EdgeInsets.all(40),
                transformationController: _transformationController,
                minScale: 0.1,
                maxScale: 1.8,
                onInteractionStart: _onInteractionStart,
                child: Container(
                  child: Image.asset('images/01.jpg'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton(),
                _buildButton2(),
                _buildButton3(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton() {
    return MaterialButton(
        child: Icon(
          Icons.refresh,
          color: Colors.white,
        ),
        color: Colors.green,
        shape: CircleBorder(
          side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
        ),
        onPressed: _animateResetInitialize);
  }

  var _x = 0.0;

  Widget _buildButton2() {
    return MaterialButton(
        child: Icon(
          Icons.navigate_before,
          color: Colors.white,
        ),
        color: Colors.green,
        shape: CircleBorder(
          side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
        ),
        onPressed: () {
          var temp = _transformationController.value.clone();
          temp.translate(_x - 4);
          _transformationController.value = temp;
        });
  }

  Widget _buildButton3() {
    return MaterialButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        color: Colors.green,
        shape: CircleBorder(
          side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
        ),
        onPressed: () {
          var temp = _transformationController.value.clone();
          temp.translate(_x + 4);
          _transformationController.value = temp;
        });
  }
}
