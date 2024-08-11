import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
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

  List<Icon> scorecard = [];
  int correctAnswers = 0;
  int wrongAnswers = 0;

  void _checkAnswer(bool answer) {
    if (_questionBank[_questionNumber].questionAnswer == answer) {
      scorecard.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
      correctAnswers++;
    } else {
      scorecard.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
      wrongAnswers++;
    }
  }

  void nextQuestion(answer, context) {
    if (scorecard.length < _questionBank.length) {
      _checkAnswer(answer);
    }
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      Alert(
        context: context,
        title: "Your Score",
        desc:
            "Correct Answers : $correctAnswers \n Wrong Answers : $wrongAnswers",
      ).show();
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
}
