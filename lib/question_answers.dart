import 'package:flutter/material.dart';

class QuestionAnswers extends StatelessWidget {
  const QuestionAnswers(this.answers, this.answerQuestion, {super.key});

  final List<String> answers;

  final void Function(String answer) answerQuestion;

  List<Widget> decorateAnswers(List<String> answers) {
    return answers
        .map((answer) => [
              SizedBox(height: 20),
              SizedBox(
                  child: ElevatedButton(
                onPressed: () {
                  answerQuestion(answer);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    minimumSize: Size(double.infinity, 40)),
                child: Text(answer,
                    style:
                        const TextStyle(fontSize: 15.0, color: Colors.white)),
              ))
            ])
        .expand((w) => w)
        .toList();
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min, children: decorateAnswers(answers));
  }
}
