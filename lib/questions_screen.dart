import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_answers.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.switchToScreen, this.storeAnswer, {super.key});

  final void Function(String stringName) switchToScreen;
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
    if (currentQuestion + 1 == questions.length) {
      widget.switchToScreen('result-screen');
    } else {
      setState(() {
        currentQuestion++;
      });
    }
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Text(
          questions[currentQuestion].text,
          style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 201, 153, 251))),
          textAlign: TextAlign.center,
        )),
        const SizedBox(height: 30),
        QuestionAnswers(questions[currentQuestion].getAnswers(), answerQuestion)
      ]),
    );
  }
}
