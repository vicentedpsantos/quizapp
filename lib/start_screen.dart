import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Text('Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28))),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {
            switchToScreen('questions-screen');
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: Text('Start Quiz!', style: GoogleFonts.lato()),
        ),
      ]),
    );
  }
}
