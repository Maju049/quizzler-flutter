import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  /*List<String> qsutvView = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    '1 + 1 = 3',
    '2 + 2 = 4',
    '1 x 4 = 4',
  ];

  List<bool> answer = [
    false,
    true,
    true,
    true,
    false,
    true,
    false,
    true,
    true,
  ];*/

  List<Question> qustans = [
    Question(q: 'You can lead a cow down stairs but not up stairs.',a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.',a: true),
    Question(q: 'A slug\'s blood is green.',a: true),
    Question(q: '1 + 1 = 2',a: true),
    Question(q: '2 + 2 = 5',a: false),
    Question(q: '2 + 2 = 4',a: true),
  ];

  int trackClick = 0;

  List<Widget> answertrack = [];


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qustans[trackClick].qstText,//qsutvView[trackClick],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool truech = qustans[trackClick].answ; //answer[trackClick];
                if(truech == true){
                  setState(() {
                    answertrack.add(Icon(Icons.check,color: Colors.greenAccent,),);
                  });
                }
                else{
                  setState(() {
                    answertrack.add(Icon(Icons.close,color: Colors.redAccent,),);
                  });
                }
                  trackClick = trackClick + 1;
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool truech = qustans[trackClick].answ;//answer[trackClick];
                if(truech == false){
                  setState(() {
                    answertrack.add(Icon(Icons.check,color: Colors.greenAccent,),);
                  });
                }
                else{
                  setState(() {
                    answertrack.add(Icon(Icons.close,color: Colors.redAccent,),);
                  });
                }
                trackClick++;
                },
            ),
          ),
        ),
        Row(
          children: answertrack,
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/

