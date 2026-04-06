import 'package:flutter/material.dart';

import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/widgets/answer_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  void answerQuestion() {
    print('answerQuestion');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(questions[0].text),
          ...questions[0].answers.map(
            (answer) => AnswerButton(text: answer, onPressed: answerQuestion),
          ),
        ],
      ),
    );
  }
}
