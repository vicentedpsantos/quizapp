import 'package:flutter/material.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/models/quiz_question.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.switchToScreen, Map answers, {super.key});

  final void Function(String screenName) switchToScreen;

  List<Widget> buildResult() {
    List<Widget> results = answers.map((questionId, answerGiven) {
       QuizQuestion question = questions.firstWhere((quizQuestion) => quizQuestion.getId() == questionId);
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
