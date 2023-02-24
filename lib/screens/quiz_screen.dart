import 'package:c_sikho/content/theory_data.dart';
import 'package:c_sikho/widgets/quiz_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theory.dart';
import '../providers/theoryContent.dart';

class QuizScreen extends StatefulWidget {
  static const routeName = '/quiz-screen';

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _questions;
  List<bool> clicked = [false, false, false, false];
  String buttonText = "Validate";
  String message = "";
  bool isCorrect = false;
  bool isValidateClicked = false;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int index) {
    setState(() {
      for (int i = 0; i < 4; i++) if (index != i) clicked[i] = false;
      clicked[index] = true;
    });
  }

  void _answerCheck() {
    int x = -1;
    for (int i = 0; i < 4; i++) if (clicked[i]) x = i;
    setState(() {
      if (x == -1)
        message = "Please Chose an option to continue...";
      else {
        if (isValidateClicked) {
          buttonText = "Validate";
          isValidateClicked = false;
          isCorrect = false;
          _questionIndex++;
          for (int i = 0; i < 4; i++) clicked[i] = false;
          if (_questionIndex == _questions.length) {
            if (_totalScore >= (3 / 4) * _questions.length) {
              // theory.isQuizDone = true;
              // theory.score = _totalScore;
              print(_questions.length);
              print(_totalScore);
              Provider.of<TheoryContent>(context, listen: false)
                  .updateQuizStatus(theory.id, _totalScore);
            }
          }
        } else {
          message = "";
          buttonText = "Next";
          if (_questions[_questionIndex]['answers'][x]['score']) {
            isCorrect = true;
            _totalScore++;
          } else {
            isCorrect = false;
          }
          isValidateClicked = true;
        }
      }
    });
  }

  String indexId;
  String indexTitle;
  Theory theory;

  var loadInitialData = false;
  @override
  void didChangeDependencies() {
    if (!loadInitialData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      indexId = routeArgs['id'];
      indexTitle = routeArgs['title'];
      theory =
          Provider.of<TheoryContent>(context, listen: false).findById(indexId);
      _questions = theory.quiz;
      loadInitialData = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            indexTitle,
          ),
          backgroundColor: Color(0xff645CAA)),
      body: _questionIndex < _questions.length
          ? Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(10),
                        child: Text(
                          _questions[_questionIndex]['questionText'],
                          style: TextStyle(fontSize: 28),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      for (var i = 0; i < 4; i++)
                        QuizOption(
                            _questions[_questionIndex]['answers'][i]['text'],
                            () => _answerQuestion(i),
                            clicked[i],
                            isValidateClicked,
                            isCorrect),
                    ],
                  ),
                ),
                Text(
                  message,
                  style: TextStyle(color: Colors.red),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: (() => _answerCheck()),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(buttonText),
                      )),
                ),
              ],
            )
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Congratulations on completing quiz! 🎉✨",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Your score is: " +
                          _totalScore.toString() +
                          " out of " +
                          _questions.length.toString(),
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Restart Quiz!'),
                      ),
                      style: TextButton.styleFrom(
                        shadowColor: Colors.red,
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        elevation: 5,
                      ),
                      onPressed: _resetQuiz,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Index Page'),
                      ),
                      style: TextButton.styleFrom(
                        shadowColor: Colors.red,
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        elevation: 5,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
