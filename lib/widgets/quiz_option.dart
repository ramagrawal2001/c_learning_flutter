import 'package:flutter/material.dart';

class QuizOption extends StatelessWidget {
  static const routeName = '/quiz-option';
  final String optionText;
  final VoidCallback action;
  final bool isClicked;

  QuizOption(this.optionText, this.action, this.isClicked);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 12,bottom: 12),
        width: 700,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.brown),
          borderRadius: BorderRadius.circular(10),
          color: isClicked ? Colors.blue.shade100 : Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(optionText,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
              
              isClicked
                  ? Icon(Icons.radio_button_checked_rounded, size: 15)
                  : Icon(Icons.radio_button_unchecked_outlined, size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
