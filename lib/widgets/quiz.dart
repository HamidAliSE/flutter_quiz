import 'package:flutter/material.dart';

import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/screens/start_screen.dart';
import 'package:flutter_quiz/screens/results_screen.dart';
import 'package:flutter_quiz/screens/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String _activeScreen = 'start-screen';
  final List<String> _selectedAnswers = [];

  void startQuiz() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void _answerQuestion(String answer) {
    setState(() {
      _selectedAnswers.add(answer);
      if (_selectedAnswers.length == questions.length) {
        _activeScreen = 'results-screen';
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _activeScreen = 'questions-screen';
      _selectedAnswers.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(startQuiz: startQuiz);
    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: _answerQuestion);
    }
    if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        onPressRestartQuiz: _restartQuiz,
        selectedAnswers: _selectedAnswers,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
