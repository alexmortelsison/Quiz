import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
      q: "Instant mashed potatoes were invented by Canadian Edward Asselbergs in 1962.",
      a: true,
    ),
    Question(
      q: "Tupac Shakur died due to complications from being stabbed in 1996.",
      a: false,
    ),
    Question(
      q: "Albert Einstein had trouble with mathematics when he was in school.",
      a: false,
    ),
    Question(
      q: "The vapor produced by e-cigarettes is actually water.",
      a: false,
    ),
    Question(
      q: "Anatomy considers the forms of macroscopic structures such as organs and organ systems.",
      a: true,
    ),
    Question(
      q: "In \"Star Trek\" Klingons are aliens.",
      a: true,
    )
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
