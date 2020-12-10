class Questionbank{
  String questions;
  bool answers;

  //Questionbank({String qus,bool answ}){}
  Questionbank(String qus,bool answ){
    questions = qus;
    answers = answ;
  }
}
//Questionbank qusans = Questionbank(qus: 'Some cats are actually allergic to humans', answ: true);

List<Questionbank> qusansw = [
  Questionbank('Some cats are actually allergic to humans', true),
  Questionbank('You can lead a cow down stairs but not up stairs.', false),
  Questionbank('Approximately one quarter of human bones are in the feet.', true),
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
      '1 + 1 = 3',
      false),
  Questionbank(
      '2 + 2 = 4',
      true),
  Questionbank(
      'dart is an opp language',
      true),
  Questionbank(
      'pi value is \'3.14159265 \'',
      true)
];