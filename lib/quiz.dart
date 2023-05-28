import 'package:flutter/material.dart';

import 'package:quizapp/start_screen.dart';
import 'package:quizapp/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  initState() {
    activeScreen = StartScreen(switchScreen);

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: activeScreen),
    ));
  }
}
