import 'package:flutter/material.dart';

import 'package:quizapp/models/quiz_question.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult(this.question, this.answerGiven, {super.key});

  final QuizQuestion question;
  final String answerGiven;

  bool correctAnswer() {
    return question.getCorrectAnswer() == answerGiven;
  }

  @override
  Widget build(context) {
    return ColoredBox(
      color: Colors.green,
      child: Material(
        child: ListTile(
            leading: correctAnswer() ? const Icon(Icons.check) : const Icon(Icons.close),
            title: Text(question.getText()),
            subtitle: Text(
                "Answer given: $answerGiven, correct answer: $question.getCorrectAnswer()")),
      ),
    );
  }
}
