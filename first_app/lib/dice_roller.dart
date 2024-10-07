import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

var randamizer = Random();

rolldice() {}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollorState();
  }
}

int x = 1;

class _DiceRollorState extends State<DiceRoller> {
  void rolldice() {
    setState(() {
      x = randamizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$x.png',
          width: 200,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 30),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 32.0,
            ),
          ),
          child: const StyledText('Roll dice'),
        )
      ],
    );
  }
}
