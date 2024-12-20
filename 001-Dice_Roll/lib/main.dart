import 'package:flutter/material.dart';

// local project imports
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Alignment.topLeft,
          Alignment.bottomRight,
          Colors.deepPurple,
          Colors.purple,
        ),
      ),
    ),
  );
}
