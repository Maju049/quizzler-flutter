import 'package:flutter/material.dart';
import 'package:quizzler/functions.dart';
import 'question_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
//__button_func-----------------------------------
  void truefalfunc(bool inputdata) {
    int queslimit = qbquesanswess.quesnumlimt();
    if (answTrack <= queslimit) {
      bool currentansw = qbquesanswess.quesnaswss();
      if (currentansw == inputdata) {
        scoreView.add(Icon(Icons.check, color: Colors.blueAccent),);
      }
      else {
        scoreView.add(Icon(Icons.close, color: Colors.redAccent,),);
      }
      answTrack++;
    }
    else {
      Alert(context: context,
        type: AlertType.warning,
        title: "Quizzler",
        desc: "Quizzler_game_finished",
        buttons: [
          DialogButton(
            child: Text(
              "Restart",
              style: TextStyle(color:Colors.white,fontSize: 20),
            ),
            onPressed: (){
              setState(() {
                answTrack = 0;
                scoreView = [];
                Navigator.pop(context);
              });
              },
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
          DialogButton(
            child: Text(
              "GRADIENT",
              style: TextStyle(color:Colors.white,fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116,116,191,1.0),
              Color.fromRGBO(52,138,199,1.0)
            ]),
          ),
        ]
    ).show();
    }
  }
//-------------------------------------------------

  Qbqueansw qbquesansw = Qbqueansw();

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
                qbquesansw.quesnsview(),
                //qusansw[answTrack].questions,//viewQus,
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
                  setState(() {
                    truefalfunc(true);
                  });
                }
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
                setState(() {
                  truefalfunc(false);
                });
                },
            ),
          ),
        ),
        Row(
          children: scoreView,
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}