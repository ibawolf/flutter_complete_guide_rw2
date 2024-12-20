import 'package:flutter/material.dart';

// Local module imports
import 'package:dice_roll/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  //

  const GradientContainer(
    this.alignment1,
    this.alignment2,
    this.color1,
    this.color2, {
    super.key,
  });

  final Alignment alignment1;
  final Alignment alignment2;
  final Color color1;
  final Color color2;

  @override
  Widget build(ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: alignment1,
          end: alignment2,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
