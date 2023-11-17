import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedView extends StatefulWidget {
  const AnimatedView({super.key});

  @override
  State<AnimatedView> createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  double _borderRadius = 8;

  void changeShape() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble() + 50;
      _height = random.nextInt(300).toDouble() + 50;
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      _borderRadius = random.nextInt(100).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
