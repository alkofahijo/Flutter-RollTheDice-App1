import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = 'images/dice-1.png';
  final random = Random();
  void rollDice() {
    var imageNum = random.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'images/dice-$imageNum.png';
    });
    dev.log('The Button Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 250),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          onPressed: rollDice,
          child: Text('Roll Dice', style: TextStyle(fontSize: 28)),
        ),
      ],
    );
  }
}
