import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.fontSize, this.fontColor, {super.key});

  final String text;
  final double fontSize;
  final Color fontColor;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: fontColor),
    );
  }
}
