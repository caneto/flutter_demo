import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedGradientWave extends StatefulWidget {
  @override
  _AnimatedGradientWaveState createState() => _AnimatedGradientWaveState();
}

class _AnimatedGradientWaveState extends State<AnimatedGradientWave> with SingleTickerProviderStateMixin {
  
  late AnimationController _controller;
  late Animation<double> _animation;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)..addListener(() => setState(() {}));
    _controller.repeat();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            colors: [
              Colors.amber,
              Colors.deepPurple,
            ],
            stops: [_animation.value - 0.2, _animation.value],
          ),
        ),
        child: CustomPaint(
          painter: WavePainter(animationValue: _animation.value),
        ),
      );
  }
}

class WavePainter extends CustomPainter {
  final double animationValue;

  WavePainter({required this.animationValue});
  
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final whitePaint = Paint()..color = Colors.white;
    final width = size.width;
    final height = size.height;
    final midHeight = height / 2;
    final pointCount = 3;
    final pointWidth = width / pointCount;
    final pointHeight = 30.0;
    final waveHeight = 50.0;
    for (var i = 0; i < pointCount + 1; i++) {
      final x = i * pointWidth;
      final y = midHeight + math.sin((animationValue * 360 - i * 120) * math.pi / 180) * waveHeight;
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        final xPrev = (i - 1) * pointWidth;
        final yPrev = midHeight + math.sin((animationValue * 360 - (i - 1) * 120) * math.pi / 180) * waveHeight;
        path.quadraticBezierTo(xPrev + pointWidth / 2, yPrev, x, y);
      }
      path.lineTo(x, y + pointHeight);
      path.lineTo(x - pointWidth, y + pointHeight);
      path.lineTo(x - pointWidth, y);
      path.close();
      canvas.drawPath(path, whitePaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}