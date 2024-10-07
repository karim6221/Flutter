import 'package:flag_quiz_app/data/questions.dart';
import 'package:flag_quiz_app/questionsScreen.dart';
import 'package:flag_quiz_app/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flag_quiz_app/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz> {
  var activeScreen = 'startpage';
  void switchpage() {
    setState(() {
      activeScreen = 'questionpage';
    });
  }

  void addAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result';
      });
    }
  }

  List<String> selectedAnswers = [];
  @override
  build(context) {
    Widget selectedScreen = StartPage(
      switchScreen: switchpage,
    );
    if (activeScreen == 'questionpage') {
      setState(() {
        selectedScreen = Questionsscreen(
          chooseAnswer: addAnswer,
        );
      });
    }
    if (activeScreen == 'result') {
      setState(() {
        selectedScreen = const ResultScreen();
      });
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(26, 37, 2, 87),
              Color.fromARGB(255, 158, 23, 200),
              //Color.fromARGB(5, 145, 14, 168),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: selectedScreen,
      )),
    );
  }
}
