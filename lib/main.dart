import 'package:flutter/material.dart';

import 'package:quizapp/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Colors.purple,
              Colors.pink
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const StartScreen()),
    )),
  );
}
