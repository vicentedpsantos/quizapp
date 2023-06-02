import 'package:flutter/material.dart';

import 'package:quizapp/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, String>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
        height: 500,
        child: SingleChildScrollView(
            child: Column(
                children: summaryData.map((data) {
          return SummaryItem(data);
        }).toList())));
  }
}
