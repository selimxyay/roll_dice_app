import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:udemy_flutter/utilities/container_text.dart';
import 'package:udemy_flutter/utilities/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // I have checked and learned the type of "colors" by hovering into it
            colors: colors,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        // child of the container, which means the content inside the container
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
