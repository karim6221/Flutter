import 'package:flutter/material.dart';
//import 'package:second_app/quiz.dart';

void start() {}

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 70.0),
          ),
          const Text(
            "Learn Flutter The Fun Way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              //color: Colors.black,
            ),
            label: const Text('start'),
          )
        ],
      ),
    );
  }
}
