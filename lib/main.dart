import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      "questionText": "what is your favourite animal ?",
      "answers": [
        {"text": "dog", "score": 1},
        {"text": "cat", "score": 2},
        {"text": "rabit", "score": 3},
        {"text": "monkey", "score": 4},
      ],
    },
    {
      "questionText": "what is your favourite color?",
      "answers": [
        {"text": "white", "score": 3},
        {"text": "black", "score": 4}
      ],
    }
  ];
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _getAnswer(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      _questionIndex = 0;
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text("hello"),
      ),
        body: _questionIndex < _questions.length
          ? Quiz(
              getAnswer: _getAnswer,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
