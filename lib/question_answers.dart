import 'package:flutter/material.dart';

class QuestionAnswers extends StatelessWidget {
  const QuestionAnswers(this.answers, this.answerQuestion, {super.key});

  final List<String> answers;

  final void Function(String answer) answerQuestion;

  List<Widget> decorateAnswers(List<String> answers) {
    return answers
        .map((answer) => OutlinedButton(
              onPressed: () { answerQuestion(answer); },
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.deepPurple)),
              child: Text(answer,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white)),
            ))
        .toList();
  }

  @override
  Widget build(context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: decorateAnswers(answers)));
  }
}
