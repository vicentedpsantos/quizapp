import 'package:flutter/material.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_answers.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.switchToScreen, this.storeAnswer, {super.key});

  final void Function(String stringName ) switchToScreen;
  final void Function(String answer, String questionId) storeAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;
  var answers = {};

  void answerQuestion(String answer) {
    widget.storeAnswer(answer, questions[currentQuestion].getId());
    maybeMoveToNextQuestion();
  }

  void maybeMoveToNextQuestion() {
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
            questions[currentQuestion].getAnswers(), answerQuestion)
      ]),
    );
  }
}
