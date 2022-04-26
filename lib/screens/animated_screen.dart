import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.deepOrange;

  BorderRadius _border = BorderRadius.circular(30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          padding: const EdgeInsets.all(20.0),
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _border),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInBack,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline_rounded,
          size: 35,
        ),
        onPressed: _buildAnimated,
      ),
    );
  }

  void _buildAnimated() {
    final _random = Random();
    setState(() {
      _color = Color.fromRGBO(_random.nextInt(255), _random.nextInt(255),
          _random.nextInt(255), 1);
      _width = _random.nextInt(250).toDouble();
      _height = _random.nextInt(300).toDouble();
      _border = BorderRadius.circular(_random.nextInt(300).toDouble());
    });
  }
}
