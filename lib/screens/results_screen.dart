import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.onPressRestartQuiz});

  final VoidCallback onPressRestartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton.icon(
            onPressed: onPressRestartQuiz,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.refresh),
            label: Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
