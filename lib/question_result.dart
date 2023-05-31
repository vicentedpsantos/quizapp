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
      color: Color.fromARGB(255,255,255,255),
      child: Material(
        child: ListTile(
            leading: correctAnswer() ? const Icon(Icons.check, color: Colors.green) : const Icon(Icons.close, color: Colors.red),
            title: Text(question.getText()),
            subtitle: Text(
                "Answer given: $answerGiven, correct answer: $question.getCorrectAnswer()")),
      ),
    );
  }
}
