import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/start_page.dart';
import 'package:second_app/qustions_screen.dart';
import 'package:second_app/result_screen.dart';

const Alignment startalignment = Alignment.topCenter;
const Alignment endalignment = Alignment.bottomCenter;

List<Color> colour = const [
  Color.fromARGB(255, 148, 25, 176),
  Color.fromARGB(255, 142, 30, 216),
];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _MatrialState();
  }
}

class _MatrialState extends State<Quiz> {
  var activeScreen = 'start_screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'quistion screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'result_screen';
      });
    }
  }

  @override
  build(context) {
    Widget selectScreen = StartPage(switchScreen);
    if (activeScreen == 'quistion screen') {
      selectScreen = QustionsScreen(
        onSeelectedAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result_screen') {
      selectScreen = Resultscreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colour,
              begin: startalignment,
              end: endalignment,
            ),
          ),
          child: selectScreen,
          /*activeScreen == 'start_screen'
              ? StartPage(switchScreen)
              : const QustionsScreen(),*/
        ),
      ),
    );
  }
}

/*class MAtrial extends StatelessWidget {
  const MAtrial({super.key});
  @override
  Widget build(BuildContext context) {
    return 
  }
} */
