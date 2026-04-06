import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/quiz-logo.png'),
          Text('Learn Flutter the fun way!'),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
