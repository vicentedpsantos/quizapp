import 'package:flutter/material.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/styled_text.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestion = 0;

  const exampleAnswers = ['Resposta1', 'Resposta2', 'Resposta3', 'Resposta4'];

  List<Widget> generateResponsesForQuestion(int currentQuestion) {
    return [
      Text('Resposta1'),
      Text('Resposta2'),
      Text('Resposta3'),
      Text('Resposta4')
    ];
  }

  @override
  Widget build(context) {
    return const Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          'Pergunta aqui',
          style: TextStyle(
              fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        generateResponsesForQuestion(currentQuestion)
      ]),
    );
  }
}
