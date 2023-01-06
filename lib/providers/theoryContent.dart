import 'package:flutter/material.dart';

import './theory.dart';
import '../content/theory_data.dart';

class TheoryContent with ChangeNotifier {
  List<Theory> _items = THEORY_DATA;

  List<Theory> get items {
    return [..._items];
  }

  Theory findById(String id){
    return _items.firstWhere((t) => id == t.id);
  }

}
