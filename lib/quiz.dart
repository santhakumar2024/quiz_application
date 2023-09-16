import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String?, Object>> ques;
final Function increase; 
final int count;
const Quiz({super.key, 
  required this. count,
  required this.ques,
  required this.increase
});
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Question(ques[count]['question']),
            ...(ques[count]['answers'] as List<Map<String,Object>>).map((answer) {
              //the ananyomus function is created where the arguments are to be passed to the increase fiunction 
              //since the button function wont accept the argumented function it 
              //only passes the address of the other function
              return Answer(() => increase(answer['ans'] ) , answer['score'] as String);
            }).toList()

            // ElevatedButton(onPressed: (){ques.elementAt(0); }, child: Text('b1'),)
          ],
        );
  }
}