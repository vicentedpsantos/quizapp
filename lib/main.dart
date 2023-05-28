import 'package:flutter/material.dart';

import 'package:quizapp/styled_text.dart';

void main() {
  void startQuiz() {
    print("Started the quiz!");
  }

  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(height: 70),
          const StyledText('Learn Flutter the fun way!', 28.0, Colors.white),
          OutlinedButton(
            onPressed: startQuiz,
            child: const StyledText('Start Quiz!', 15.0, Colors.white),
          ),
        ]),
      ),
    )),
  );
}
