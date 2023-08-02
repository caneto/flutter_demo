import 'package:flutter/material.dart';

class GradientPage extends StatelessWidget {
  GradientPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradientColors = [
      Colors.blue,
      Colors.red,
    ];

    final gradient = LinearGradient(
      colors: gradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Fundo Gradient'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Center(
          child: Text(
            'Bem Vindo, mundo',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
