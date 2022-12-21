import 'package:c_sikho/data.dart';
import 'package:c_sikho/widgets/quiz_option.dart';
import 'package:flutter/material.dart';

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
        } else {
          isValidateClicked = true;
          message = "";
          buttonText = "Next";
          if (_questions[_questionIndex]['answers'][x]['score']) {
            isCorrect = true;
            _totalScore++;
          } else {
            isCorrect = false;
          }
        }
      }
    });
  }

  String indexId;
  String indexTitle;

  var loadInitialData = false;
  @override
  void didChangeDependencies() {
    if (!loadInitialData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      indexId = routeArgs['id'];
      indexTitle = routeArgs['title'];
      _questions = THEORY_DATA.firstWhere((iid) {
        return iid.id == indexId;
      }).quiz;
      loadInitialData = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Quiz",
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
              child: Column(
                children: <Widget>[
                  Text(
                    "Congratulations on completing quiz! 🎉✨",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Your score is: "+ _totalScore.toString()+" out of "+_questions.length.toString(),
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    child: Text(
                      'Restart Quiz!',
                    ),
                    onPressed: _resetQuiz,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}


// Container(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(Colors.blue),
//                         foregroundColor:
//                             MaterialStateProperty.all(Colors.white),
//                       ),
//                       onPressed: () => _answerQuestion(answer['score']),
//                       child: Text(answer['text']),
//                     ),
//                   )