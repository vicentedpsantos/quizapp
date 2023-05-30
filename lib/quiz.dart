import 'package:flutter/material.dart';

import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/result_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState()  => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  var answers = {};

  void switchToScreen(String screenName) {
    setState(() {
      activeScreen = screenName;
    });
  }

  void storeAnswer(answer, questionId) {
    setState(() {
      answers[questionId] = answer;
    });
  }

  Widget selectScreen(String screenName) {
    switch (screenName) {
      case 'start-screen':
        {
          return StartScreen(switchToScreen);
        }
      case 'questions-screen':
        {
          return QuestionsScreen(switchToScreen, storeAnswer);
        }
      case 'result-screen':
        {
          return ResultScreen(switchToScreen, answers);
        }
      default:
        {
          return StartScreen(switchToScreen);
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
