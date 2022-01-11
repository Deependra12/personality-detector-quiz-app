import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'white', 'score': 5},
        {'text': 'black', 'score': 15},
        {'text': 'orange', 'score': 25},
        {'text': 'blue', 'score': 35}
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'lion', 'score': 5},
        {'text': 'zebra', 'score': 15},
        {'text': 'crocodile', 'score': 25},
        {'text': 'goat', 'score': 35}
      ]
    },
    {
      'questionText': 'What is your favourite food?',
      'answers': [
        {'text': 'mutton curry', 'score': 5},
        {'text': 'chicken curry', 'score': 15},
        {'text': 'butter nan', 'score': 25},
        {'text': 'palak panner', 'score': 35}
      ]
    },
  ];

  var _questionIndex = 0;
  var totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Personality detector'),
              centerTitle: true,
            ),
            body: _questionIndex < questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions,
                  )
                : Result(totalScore,_resetQuiz)));
  }
}
