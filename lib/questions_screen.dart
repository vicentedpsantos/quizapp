import 'package:flutter/material.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_answers.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.switchToScreen, {super.key});

  final void Function(String stringName) switchToScreen;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;

  void moveToNextQuestion() {
    if (currentQuestion + 1 >= questions.length) {
      widget.switchToScreen('result-screen');
    } else {
      setState(() {
        currentQuestion += 1;
      });
    }
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          questions[currentQuestion].getText(),
          style: const TextStyle(
              fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        QuestionAnswers(
            questions[currentQuestion].getAnswers(), moveToNextQuestion)
      ]),
    );
  }
}
