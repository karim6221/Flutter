import 'package:flutter/material.dart';
import 'package:second_app/result_screen.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});
  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['questions_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text(data['correct_answer'] as String),
                  Text(data['user_answer'] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
