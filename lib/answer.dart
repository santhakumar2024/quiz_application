

import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
   final  VoidCallback  selectHandler;
   final String answers;
   const Answer(this.selectHandler,this.answers, {super.key});
  
 
   @override
   Widget build(BuildContext context) {
     return SizedBox(
      
      width: double.infinity,
      child:  ElevatedButton(
   onPressed:  selectHandler,
   child:Text(answers.toString()), 
   ),

     );
   }
 }