import 'package:flutter/material.dart';

import './theory.dart';
import '../content/theory_data.dart';

class TheoryContent with ChangeNotifier {
  List<Theory> _items = THEORY_DATA;

  List<Theory> get items {
    return [..._items];
  }

  void updateQuizStatus(String id, int score) {
    _items.firstWhere((element) => element.id == id).isQuizDone = true;
    _items.firstWhere((element) => element.id == id).score = score;
    notifyListeners();
  }

  Theory findById(String id) {
    return _items.firstWhere((t) => id == t.id);
  }
}
