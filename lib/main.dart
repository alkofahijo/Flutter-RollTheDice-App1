import 'package:app1/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: const Color.fromARGB(255, 105, 27, 208),
          color2: const Color.fromARGB(255, 209, 54, 244),
        ),
      ),
    );
  }
}
