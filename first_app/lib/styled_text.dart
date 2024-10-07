import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text1, {super.key});
  final String text1;
  @override
  Widget build(context) {
    return Text(
      text1,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 25.0,
      ),
    );
  }
}
