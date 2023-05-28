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
          TextButton(
              onPressed: startQuiz,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                  ),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 15.0)),
              child: const Text('Start Quiz!')),
        ]),
      ),
    )),
  );
}
