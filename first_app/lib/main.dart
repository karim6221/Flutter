import 'package:flutter/material.dart';
import 'package:first_app/gradiantText.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradiantText([
          Color.fromARGB(255, 58, 113, 208),
          Color.fromARGB(255, 168, 21, 21)
        ]),
      ),
    ),
  );
}
