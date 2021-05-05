import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 30) {
      resultText = 'You are really smart!';
    } else if (resultScore <= 15) {
      resultText = 'Too close... you can do it better';
    } else if (resultScore >= 9) {
      resultText = ' You are... strange';
    } else if (resultScore >= 0) {
      resultText = 'You are so bad...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Quiz'),
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
