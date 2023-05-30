import 'package:flutter/material.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/models/quiz_question.dart';
import 'package:quizapp/question_result.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.switchToScreen, this.answers, {super.key});

  final Map answers;
  final void Function(String screenName) switchToScreen;

  List<Widget> buildResult() {
    List<Widget> results = [];

    answers.forEach((questionId, answerGiven) {
      QuizQuestion question = questions.firstWhere((quizQuestion) => quizQuestion.getId() == questionId);

      results.add(QuestionResult(question, answerGiven));
    });

    return results;
  }

  @override
  build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: buildResult()),
    );
  }
}
