import 'package:flutter/material.dart';

import 'package:flutter_quiz/widgets/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...summaryData.map((data) => SummaryItem(data: data))],
    );
  }
}
