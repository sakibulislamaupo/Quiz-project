import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText: 'A hash function is a one-way function.',
        questionAnswer: true),
    Question(
        questionText: 'A MAC is not an authentication tag.',
        questionAnswer: false),
    Question(
        questionText:
            'Digital Signatures are based on asymmetric cryptographic algorithms.',
        questionAnswer: true),
    Question(
        questionText:
            'DEA is a symmetric block-cipher algorithm developed by IBM.',
        questionAnswer: true),
    Question(
        questionText: 'Cryptographic algorithms are divided into two groups.',
        questionAnswer: true),
    Question(
        questionText:
            'Security issues are critical for the success of Pervasive Computing.',
        questionAnswer: true),
    Question(
        questionText:
            'Symmetric cryptographic algorithms also known as public key algorithm.',
        questionAnswer: false),
    Question(
        questionText:
            'Asymmetric cryptographic algorithms also know as public key algorithm.',
        questionAnswer: true),
    Question(
        questionText:
            'A merchant does not need to know the identity of the customer.',
        questionAnswer: false),
    Question(
        questionText: 'An order should know the identity of the sender.',
        questionAnswer: true),
    Question(
        questionText: 'HTML instructions are called tags.',
        questionAnswer: true),
    Question(
        questionText: 'Tags can contain attributes within their brackets.',
        questionAnswer: true),
    Question(
        questionText: 'The HTML document is structured into two parts.',
        questionAnswer: true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('quiz finished');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
