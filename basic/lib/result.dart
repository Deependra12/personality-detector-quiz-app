import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function reset;
  Result(this.resultscore, this.reset);
  String get resultPhrase {
    String result;
    if (resultscore < 20) {
      result = 'you are innocent';
    } else if (resultscore < 40) {
      result = 'you are little innocent';
    } else if (resultscore < 70) {
      result = 'you are strange';
    } else {
      result = 'you are bad';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          FlatButton(
            onPressed: reset,
             child: const Text('Reset quiz' ,style: TextStyle(fontSize: 20),),
             textColor: Colors.red,
             
             )
        ],
      ),
    );
  }
}
