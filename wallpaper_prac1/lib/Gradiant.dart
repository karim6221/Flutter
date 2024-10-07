import 'package:flutter/material.dart';
//import 'package:wallpaper_prac1/style_text.dart';
import 'package:wallpaper_prac1/Change_photo.dart';

const Alignment startalignment = Alignment.topCenter;
const Alignment endalignment = Alignment.bottomCenter;

class Gradiant extends StatelessWidget {
  Gradiant.purple({
    this.colors = const [
      Colors.blue,
      Colors.purple,
    ],
    super.key,
  });
  Gradiant(this.colors, {super.key});
  List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startalignment,
          end: endalignment,
        ),
      ),
      child: const Center(
        child: ChangePhoto(),
      ),
    );
  }
}
