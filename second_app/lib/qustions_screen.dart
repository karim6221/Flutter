import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:second_app/start_page.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/models/quiz_quistions.dart';
import 'package:second_app/answer_button.dart';
//import 'package:google_fonts/google_fonts.dart';

class QustionsScreen extends StatefulWidget {
  const QustionsScreen({required this.onSeelectedAnswer, super.key});
  final void Function(String answer) onSeelectedAnswer;
  @override
  State<QustionsScreen> createState() {
    return _QustionScreenState();
  }
}

class _QustionScreenState extends State<QustionsScreen> {
  var currentQuestion = 0;
  void answerQuestion(String selectAnswer) {
    widget.onSeelectedAnswer(selectAnswer);
    setState(() {
      currentQuestion += 1;
    });
  }

  @override
  build(context) {
    final QuizQuestion qest = questions[currentQuestion];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              qest.text,
              /*style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 149, 246),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),*/
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...qest.getshuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  text: answer,
                  fun: () {
                    answerQuestion(answer);
                  },
                );
              },
            )
            //AnswerButton(text: qest.answers[0], fun: () {}),
            //AnswerButton(text: qest.answers[1], fun: () {}),
            //AnswerButton(text: qest.answers[2], fun: () {}),
          ],
        ),
      ),
    );
  }
}
