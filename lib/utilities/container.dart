import 'package:flutter/material.dart';
import 'package:udemy_flutter/utilities/content.dart';

class RollDiceContainer extends StatelessWidget {
  const RollDiceContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: const Center(
          child: ContainerContent(),
        ),
      ),
    );
  }
}
