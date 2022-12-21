import 'package:flutter/material.dart';

class Theory {
  final String id;
  final String title;
  final List<String> subIndex;
  final List<Widget> theoryContent;
  final List<Map<String, Object>> quiz;
  Theory({
    @required this.id,
    @required this.title,
    @required this.subIndex,
    @required this.theoryContent,
    @required this.quiz,
  });
}
