import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  StyleText(this.text1, {super.key});
  var text1;
  @override
  Widget build(context) {
    return Text(
      text1,
      style: const TextStyle(
        fontSize: 27.0,
        color: Color.fromARGB(255, 28, 182, 51),
      ),
    );
  }
}
