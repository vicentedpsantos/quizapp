import 'package:flutter/material.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_answers.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;

  void moveToNextQuestion() {
    if (currentQuestion + 1 >= questions.length) {
      print("the list of question is over");
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
        QuestionAnswers(questions[currentQuestion].getAnswers(), moveToNextQuestion)
      ]),
    );
  }
}
