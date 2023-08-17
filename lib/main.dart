// import 'package:flutter/material.dart';
// void main(){
//   runApp();

// }
// class joy extends StatelessWidget {
//   const joy({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }

// }
// // ignore: camel_case_types, unused_element
// class _loginState  StatefulWidget {
//   const _loginState ();

//   @override
//   State<_loginState > createState() => __loginState State();
// }
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  //leading underscxore is used to create the private class
  //var c=3;
  var count = 0;
  void increase() {
    setState(() {
      count = count + 1;
    });
    //print(_count++);
    //return _count;
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      {
        'question': "what is the world greatest word makes you happy?",
        "answers": ['anime', 'love', 'friendship']
      },
      {
        'question': "why is love so complicated for man?",
        "answers": [
          'girls are not predictable',
          'man cannot accept rejections',
          'women are changeable'
        ]
      },
      {
        'question':
            "why always man get hurt in the process of obtaining love ?",
        "answers": [
          'men are kind hearted',
          'feelings of men are not considered by others'
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'knowledge checker',
          ),
        ),
        body: Column(
          children: [
            Question(ques[count]['question']),
            ...(ques[count]['answers'] as List<String>).map((answer) {
              var answer2 = Answer(increase, answer);
              return answer2;
            }).toList()

            // ElevatedButton(onPressed: (){ques.elementAt(0); }, child: Text('b1'),)
          ],
        ),
      ),
    );
  }
}
