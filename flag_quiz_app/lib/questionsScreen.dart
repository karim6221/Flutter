import 'package:flutter/material.dart';
import 'package:flag_quiz_app/data/questions.dart';
import 'package:flag_quiz_app/model/quiz_question.dart';

class Questionsscreen extends StatefulWidget {
  const Questionsscreen({super.key, required this.chooseAnswer});
  final void Function(String) chooseAnswer;
  @override
  State<Questionsscreen> createState() {
    return _QuestionsscreenState();
  }
}

class _QuestionsscreenState extends State<Questionsscreen> {
  var a = 0;
  void switchScreen(String answer) {
    widget.chooseAnswer(answer);
    setState(() {
      a++;
    });
  }

  @override
  build(context) {
    final QuizQuestion asks = questions[a];
    var selectedAsk = questions[a].ask;
    //List<String> selectedAnswers = questions[a].answers;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            questions[a].path,
            width: 250,
          ),
          const Padding(padding: EdgeInsets.all(4.0)),
          Text(
            selectedAsk,
            style: const TextStyle(fontSize: 22),
          ),
          const Padding(padding: EdgeInsets.all(4.0)),
          ...asks.answers.map(
            (answers) {
              return OutlinedButton(
                onPressed: () {
                  switchScreen(answers);
                },
                child: Text(
                  answers,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
