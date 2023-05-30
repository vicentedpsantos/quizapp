import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.switchToScreen, {super.key});

  final void Function(String screenName) switchToScreen;
  @override
  build(context) {
    return const Center(
      child: Column(
          mainAxisSize: MainAxisSize.min, children: [Text('result screen')]),
    );
  }
}
