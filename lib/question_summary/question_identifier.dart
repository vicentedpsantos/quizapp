import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.questionId, required this.isCorrectAnswer});
  final String questionId;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 150, 198, 241)
              : Color.fromARGB(255, 249, 133, 241),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(questionId,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 22, 2, 56))));
  }
}
