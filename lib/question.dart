class Question {
  String qstText;
  bool answ;

  Question({String q, bool a}){
    qstText = q;
    answ    = a;
  }

}
/*
onPressed: () {
bool currentansw = qusansw[answTrack].answers;//answer[trackClick];
if(currentansw == false){
setState(() {
scoreView.add(Icon(Icons.check,color:Colors.blueAccent),);
answTrack++;
});
}
else{
setState(() {
scoreView.add(Icon(Icons.close,color: Colors.redAccent,),);
answTrack++;
});
}
},
*/