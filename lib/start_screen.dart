import 'package:flutter/material.dart';

import 'package:quizapp/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void startQuiz() {
    print("Started the quiz!");
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/quiz-logo.png', width: 300),
        const SizedBox(height: 80),
        const StyledText('Learn Flutter the fun way!', 28.0, Colors.white),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: startQuiz,
          child: const StyledText('Start Quiz!', 15.0, Colors.white),
        ),
      ]),
    );
  }
}
