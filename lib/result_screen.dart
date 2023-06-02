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
      QuizQuestion question = questions
          .firstWhere((quizQuestion) => quizQuestion.getId() == questionId);

      results.add(QuestionResult(question, answerGiven));
      results.add(SizedBox(height: 20));
    });

    return results;
  }

  @override
  build(context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('You answer X out of Y questions correctly!'),
            SizedBox(height: 30),
            Text('List of answers and questions...'),
            SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  switchToScreen('start-screen');
                },
                child: const Text('Restart quiz!'))
          ]),
        ));
  }
}
