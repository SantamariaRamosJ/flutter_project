import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Who was the first man to step on the moon?',
      'answers': [
        {'text': 'Louis Amstrong', 'score': 5},
        {'text': 'Neil Amstrong', 'score': 10},
        {'text': 'Robert Ford', 'score': 3},
        {'text': 'Daniel Radcliffe', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the value of PI?',
      'answers': [
        {'text': '3.14159', 'score': 10},
        {'text': '3.14555', 'score': 3},
        {'text': '3.14478', 'score': 0},
        {'text': '3.14897', 'score': 5},
      ],
    },
    {
      'questionText': 'Who invented the first car?',
      'answers': [
        {'text': 'Ken Kobayashi', 'score': 0},
        {'text': 'Henry Ford', 'score': 5},
        {'text': 'Nicolas-Joseph Cugnot', 'score': 10},
        {'text': 'Jujiro Matsuda', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('General Culture'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
