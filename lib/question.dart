import 'package:flutter/material.dart';


class  Question extends StatelessWidget {
  final Object? questionText;

  const Question(this.questionText, {super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:Text(
        questionText.toString(),
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,

    ),
    );
  }
}