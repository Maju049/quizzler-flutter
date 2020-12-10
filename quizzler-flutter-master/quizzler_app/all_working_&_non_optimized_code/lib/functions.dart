import 'package:quizzler/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

int answTrack = 0;
Qbqueansw qbquesanswess = Qbqueansw();
List<Widget> scoreView = [];

void truefalfunc(bool inputdata){
  int queslimit = qbquesanswess.quesnumlimt();
  if(answTrack <= queslimit){
    bool currentansw = qbquesanswess.quesnaswss();
    if(currentansw == inputdata){
      scoreView.add(Icon(Icons.check,color:Colors.blueAccent),);
    }
    else{
      scoreView.add(Icon(Icons.close,color: Colors.redAccent,),);
    }
    answTrack++;
  }
  else{
    Alert(context: context,
        title: "RFLUTTER",
        desc: "FLUTTER is awesome.",
    ).show();
  }
}