import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
          child:  Text(answer),
          onPressed: selectHandler,
        ));
  }
}
