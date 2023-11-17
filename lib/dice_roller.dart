import 'dart:math';

import 'package:flutter/material.dart';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<Diceroller> {
  // var activeDiceImage = 'assests/images/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assests/images/dice-$currentDiceRoll.png',
          width: 200,
          // height: 800,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 22,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
