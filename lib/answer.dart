import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
      ),
    );
  }
}
