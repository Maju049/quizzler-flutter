import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:quizzler/functions.dart';

class Questionbank{
  String questions;
  bool answers;

  Questionbank(this.questions,this.answers){}
}
//Questionbank qusans = Questionbank(qus: 'Some cats are actually allergic to humans', answ: true);
class Qbqueansw {
  List<Questionbank> _qusansw = [
    Questionbank('Some cats are actually allergic to humans', true),
    Questionbank('You can lead a cow down stairs but not up stairs.', false),
    Questionbank(
        'Approximately one quarter of human bones are in the feet.', true),
    Questionbank('A slug\'s blood is green.', true),
    Questionbank('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Questionbank('It is illegal to pee in the Ocean in Portugal.', true),
    Questionbank(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questionbank(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questionbank(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questionbank(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questionbank('Google was originally called \"Backrub\".', true),
    Questionbank(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questionbank(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Questionbank(
        'dart is an opp language',
        true)
  ];
  String quesnsview(){
    int qlength = _qusansw.length - 1;
    if(answTrack < _qusansw.length){
    return _qusansw[answTrack].questions;
    }
    else{
      return _qusansw[qlength].questions;
    }
  }
  int quesnumlimt(){
    return _qusansw.length-1;
  }
  bool quesnaswss(){
    return _qusansw[answTrack].answers;
  }
}