import 'package:flutter/material.dart';

class Program{
  final String id;
  final String title;
  final List<String> subIndex;
  final List<Widget> programContent;

  Program({
    required this.id,
    required this.title,
    required this.subIndex,
    required this.programContent
  });
}
