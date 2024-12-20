import 'package:flutter/material.dart';
import 'dart:math';

// DiceRoller Class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _DiceRoller State  Class
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRolls = [1, 2, 3, 4, 5];

  void rollDice() {
    setState(() {
      for (var i = 0; i < currentDiceRolls.length; i++) {
        currentDiceRolls[i] = randomizer.nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-${currentDiceRolls[0]}.png',
          width: 100,
        ),
        Image.asset(
          'assets/images/dice-${currentDiceRolls[1]}.png',
          width: 100,
        ),
        Image.asset(
          'assets/images/dice-${currentDiceRolls[2]}.png',
          width: 100,
        ),
        Image.asset(
          'assets/images/dice-${currentDiceRolls[3]}.png',
          width: 100,
        ),
        Image.asset(
          'assets/images/dice-${currentDiceRolls[4]}.png',
          width: 100,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
