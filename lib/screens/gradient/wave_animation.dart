import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

class FlutterFluxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WaveAnimation(),
      ),
    );
  }
}

class WaveAnimation extends StatefulWidget {
  @override
  _WaveAnimationState createState() => _WaveAnimationState();
}

class _WaveAnimationState extends State with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
      primaryColors: const [
        Colors.pink,
        Colors.pinkAccent,
        Colors.white,
      ],
      secondaryColors: const [
        Colors.blue,
        Colors.blueAccent,
        Colors.white,
      ],
      child: Container(),
    );
  }
}