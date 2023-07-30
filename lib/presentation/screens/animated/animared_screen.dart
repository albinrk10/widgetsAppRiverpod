import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double heigth = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changesShape() {
    final random = Random();

    width = random.nextInt(300) + 120;
    heigth = random.nextInt(300) + 120;
    color = Color.fromARGB(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    borderRadius = random.nextInt(100) + 20;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticInOut,
          width: width <= 0 ? 0 : width,
          height: heigth <= 0 ? 0 : heigth,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changesShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
