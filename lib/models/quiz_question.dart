class QuizQuestion {
  const QuizQuestion(this.id, this.text, this.answers, this.correctAnswer);

  final List<String> answers;
  final String correctAnswer;
  final String id;
  final String text;

  List<String> getAnswers() => answers;
  String getCorrectAnswer() => correctAnswer;
  String getId() => id;
  String getText() => text;
}
