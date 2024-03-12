import 'package:flutter/material.dart';
import 'package:udemy_flutter/utilities/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientContainer(
        colors: [Colors.grey.shade300, Colors.grey.shade800],
      ),
    );
  }
}
