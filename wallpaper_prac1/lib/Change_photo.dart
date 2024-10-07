import 'package:flutter/material.dart';
import 'package:wallpaper_prac1/style_text.dart';
import 'dart:math';

var y = Random();

class ChangePhoto extends StatefulWidget {
  const ChangePhoto({super.key});
  @override
  State<ChangePhoto> createState() {
    return _ChangePhotoState();
  }
}

int x = 1;

class _ChangePhotoState extends State<ChangePhoto> {
  void nextphoto() {
    setState(() {
      //x = y.nextInt(10) + 1;
      x++;
      x == 11 ? x = 1 : x = x;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/wallpaper_$x.jpg',
          width: 350,
          height: 250,
        ),
        TextButton(
          onPressed: nextphoto,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 5),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 32.0,
            ),
          ),
          child: StyleText('next'),
        ),
      ],
    );
  }
}
