import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'question_bank.dart';

int answTrack = 0;

List<Widget> scoreView = [];

//True_Function
void truefunc(){
    bool currentansw = qusansw[answTrack].answers;
  if(currentansw == true){
    scoreView.add(Icon(Icons.check,color: Colors.blueAccent,),);
    answTrack = answTrack + 1;
  }
  else{
    scoreView.add(Icon(Icons.close,color: Colors.redAccent,),);
    answTrack++;
  }
}
//False_Function
void falsefunc(){
  bool currentansw = qusansw[answTrack].answers;
  if(currentansw == false){
    scoreView.add(Icon(Icons.check,color:Colors.blueAccent),);
    answTrack++;
  }
  else{
    scoreView.add(Icon(Icons.close,color: Colors.redAccent,),);
    answTrack++;
  }
}