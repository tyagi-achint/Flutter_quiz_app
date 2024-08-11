class Question {
  String questionText;
  bool questionAnswer;

  Question({required String q, required bool a})
      : questionText = q,
        questionAnswer = a;
}

List<Question> questionBank = [
  Question(
    q: 'Flutter is a UI toolkit developed by Apple.',
    a: false,
  ),
  Question(
    q: 'Flutter uses the Dart programming language.',
    a: true,
  ),
  Question(
    q: 'In Flutter, widgets are immutable.',
    a: true,
  ),
  Question(
    q: 'StatefulWidget is used when the UI changes dynamically.',
    a: true,
  ),
  Question(
    q: 'Flutter can only be used to develop Android apps.',
    a: false,
  ),
  Question(
    q: 'The main function is the entry point of a Flutter application.',
    a: true,
  ),
  Question(
    q: 'In Flutter, `setState` is used to update the UI by rebuilding the widget.',
    a: true,
  ),
  Question(
    q: 'Flutter applications cannot run on web browsers.',
    a: false,
  ),
  Question(
    q: 'Flutter provides a rich set of Material Design and Cupertino widgets.',
    a: true,
  ),
];
