import 'package:flutter/material.dart';

import 'package:flutter_quiz/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String _activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      _activeScreen = _activeScreen == 'start-screen'
          ? 'questions-screen'
          : 'start-screen';
    });
    print(
      _activeScreen == 'start-screen' ? 'Start Screen' : 'Questions Screen',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: StartScreen(startQuiz: startQuiz),
        ),
      ),
    );
  }
}
