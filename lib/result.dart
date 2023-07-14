import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultphrase {
    var resultText = "you did it";
    if (resultScore <= 2) {
      resultText = "good";
    } else if (resultScore <= 5) {
      resultText = "very good";
    }else{
      resultText = "wow";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
        children: [
        Text(
          resultphrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text("reset quiz"),
        )
      ],
    ));
  }
}
