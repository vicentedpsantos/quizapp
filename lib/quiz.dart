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
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  Widget selectScreen(String screenName) {
    switch (screenName) {
      case 'start-screen':
        {
          return StartScreen(switchScreen);
        }
      case 'questions-screen':
        {
          return const QuestionsScreen();
        }
      default:
        {
          return StartScreen(switchScreen);
        }
    }
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
          child: selectScreen(activeScreen)),
    ));
  }
}
