import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('Question'),
          RaisedButton(
              onPressed: answerQuestion,
              child: const Text(
                'Answer 1',
              )),
          RaisedButton(
              onPressed: () {
                print('answer 2 chosen');
              },
              child: const Text(
                'Answer 2',
              )),
          RaisedButton(
              onPressed: () => print('answer 3 chosen'),
              child: const Text(
                'Answer 3',
              )),
        ],
      ),
    ));
  }
}
