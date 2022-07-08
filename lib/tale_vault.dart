import 'package:destiny/tale.dart';

class TaleVault {
  final List<Tale> _taleFile = [
    Tale(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'),
    Tale(
        'He nods slowly, unphased by the question.',
        'At least he\'s honest. I\'ll climb in.',
        'Wait, I know how to change a tire.'),
    Tale(
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'),
    Tale(
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
        ''),
    Tale(
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
        ''),
    Tale(
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        'Restart',
        '')
  ];

  String findTaleHead() {
    return _taleFile[_taleNumber].taleHead;
  }

  String findChoice1() {
    return _taleFile[_taleNumber].choice1;
  }

  String findChoice2() {
    return _taleFile[_taleNumber].choice2;
  }

  int _taleNumber = 0;

  void nextTale(int choiceNumber) {
    if (choiceNumber == 1 && _taleNumber == 0) {
      _taleNumber = 2;
    } else if (choiceNumber == 2 && _taleNumber == 0) {
      _taleNumber = 1;
    } else if (choiceNumber == 1 && _taleNumber == 1) {
      _taleNumber = 2;
    } else if (choiceNumber == 2 && _taleNumber == 1) {
      _taleNumber = 3;
    } else if (choiceNumber == 1 && _taleNumber == 2) {
      _taleNumber = 5;
    } else if (choiceNumber == 2 && _taleNumber == 2) {
      _taleNumber = 4;
    } else if (_taleNumber == 3 || _taleNumber == 4 || _taleNumber == 5) {
      again();
    }
  }

  void again() {
    _taleNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_taleNumber == 0 || _taleNumber == 1 || _taleNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}