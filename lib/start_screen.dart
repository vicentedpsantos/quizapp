import 'package:flutter/material.dart';

import 'package:quizapp/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchToScreen, {super.key});

  final void Function(String stringName) switchToScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(height: 80),
        const StyledText('Learn Flutter the fun way!', 28.0, Colors.white),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {
            switchToScreen('questions-screen');
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz!'),
        ),
      ]),
    );
  }
}
