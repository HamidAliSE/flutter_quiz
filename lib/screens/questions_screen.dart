import 'package:flutter/material.dart';

import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(questions[0].text),
          ...questions[0].answers.map((answer) => Text(answer)),
        ],
      ),
    );
  }
}
