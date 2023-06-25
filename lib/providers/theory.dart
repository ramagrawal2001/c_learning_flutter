import 'package:flutter/material.dart';

class Theory with ChangeNotifier {
  final String id;
  final String dataId;
  final String title;
  final List<String> subIndex;
  final List<Widget> theoryContent;
  final List<Map<String, Object>> quiz;
  bool isQuizDone;
  final List<int> score;
  Theory({
    required this.id,
    required this.title,
    required this.subIndex,
    required this.theoryContent,
    required this.quiz,
    this.isQuizDone = false,
    this.score = const [],
    this.dataId=""
  });
}
