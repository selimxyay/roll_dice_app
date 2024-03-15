import 'package:flutter/material.dart';
import 'dart:math';

class ContainerContent extends StatefulWidget {
  const ContainerContent({super.key});

  @override
  State<ContainerContent> createState() => _ContainerContentState();
}

class _ContainerContentState extends State<ContainerContent> {
  var activeDiceImage = "lib/assets/images/dice-2.png";

  final randomObjectContainer = Random();

  void rollDice() {
    var randomNum = randomObjectContainer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = "lib/assets/images/dice-$randomNum.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
