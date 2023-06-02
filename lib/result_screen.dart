import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizapp/data/questions.dart';
import 'package:quizapp/models/quiz_question.dart';
import 'package:quizapp/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.switchToScreen, this.answers, {super.key});

  final Map answers;
  final void Function(String screenName) switchToScreen;

  List<Map<String, String>> getSummaryData() {
    List<Map<String, String>> summary = [];

    answers.forEach((questionId, answerGiven) {
      QuizQuestion question = questions
          .firstWhere((quizQuestion) => quizQuestion.getId() == questionId);

      summary.add({
        'question_id': question.id,
        'question': question.text,
        'correct_answer': question.correctAnswer,
        'answer': answerGiven
      });
    });

    return summary;
  }

  @override
  build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  switchToScreen('start-screen');
                },
                child: Text('Restart quiz!',
                    style:
                        GoogleFonts.lato(color: Colors.white, fontSize: 15.0)))
          ]),
        ));
  }
}
