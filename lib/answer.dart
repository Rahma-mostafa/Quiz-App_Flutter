import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback getAnswer ;
  final String answer;

  Answer(this.getAnswer, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      child: (
         ElevatedButton(
                onPressed: getAnswer,
                child: Text(answer),
                   
          )     
      ),    
    );
  }
}
