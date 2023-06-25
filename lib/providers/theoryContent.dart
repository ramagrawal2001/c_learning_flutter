import 'dart:convert';
import 'package:flutter/material.dart';

import './theory.dart';
import '../content/theory_data.dart';
import 'package:http/http.dart' as http;

class TheoryContent with ChangeNotifier {
  List<Theory> _items = THEORY_DATA;

  final String authToken;

  final String userId;
  // final String userId;

  TheoryContent(this.authToken, this.userId);

  List<Theory> get items {
    return [..._items];
  }

  Future<void> fetchAndQuizStatus() async {
    try {
      print(authToken);
      var url = Uri.https(
        'flutter-c-sikho-default-rtdb.firebaseio.com',
        '/quiz/$userId.json',
        {'auth': authToken},
      );
      final response = await http.get(url);
      var extractedData = json.decode(response.body);

      if (extractedData == null) {
        return;
      }

      Map<String, List<int>> newData = {};
      Map<String, String> dataIds = {};
      extractedData = Map<String, dynamic>.from(extractedData);
      extractedData.forEach((key, value) {
        // newData[key] = List<int>.from(value['score']);
        dataIds[value["id"]] = key;
        value = Map<String, dynamic>.from(value);
        newData[value["id"]] = (value["score"] as List<dynamic>)
            .map<int>((item) => item as int)
            .toList();
      });
      _items = _items.map((theory) {
        if (newData.containsKey(theory.id)) {
          return Theory(
              id: theory.id,
              title: theory.title,
              subIndex: theory.subIndex,
              theoryContent: theory.theoryContent,
              quiz: theory.quiz,
              isQuizDone: true,
              score: newData[theory.id] ?? [],
              dataId: dataIds[theory.id] ?? "");
        }
        return theory;
      }).toList();
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> updateQuizStatus(String id, int score) async {
    try {
      print(authToken);
      var url = Uri.https(
        'flutter-c-sikho-default-rtdb.firebaseio.com',
        '/quiz/$userId.json',
        {'auth': authToken},
      );

      // final response = await http.get(url);
      // var extractedData = json.decode(response.body);
      // print("1 " + authToken);
      // if (extractedData == null) {
      //   print("null " + authToken);
      //   return;
      // }

      // extractedData = Map<String, dynamic>.from(extractedData);

      final theoryToUpdate = _items.firstWhere((element) => element.id == id);

      if (theoryToUpdate.isQuizDone) {
        // Update existing data
        final updatedScore = List<int>.from(theoryToUpdate.score)..add(score);
        await http.patch(
          Uri.https(
            'flutter-c-sikho-default-rtdb.firebaseio.com',
            '/quiz/$userId/${theoryToUpdate.dataId}.json',
            {'auth': authToken},
          ),
          body: json.encode({'id': id, 'score': updatedScore,'scoreOutOf':theoryToUpdate.quiz.length}),
        );
        print("2 " + authToken);
        _items = _items.map((theory) {
          if (theory.id == id) {
            return Theory(
                id: theory.id,
                title: theory.title,
                subIndex: theory.subIndex,
                theoryContent: theory.theoryContent,
                quiz: theory.quiz,
                isQuizDone: true,
                score: updatedScore,
                dataId: theory.dataId);
          }
          print("3 " + authToken);
          return theory;
        }).toList();
      } else {
        // Add new data
        final updatedScore = [score];
        final response = await http.post(url,
            body: json.encode({'id': id, 'score': updatedScore,'scoreOutOf':theoryToUpdate.quiz.length}));
        _items = _items.map((theory) {
          if (theory.id == id) {
            return Theory(
                id: theory.id,
                title: theory.title,
                subIndex: theory.subIndex,
                theoryContent: theory.theoryContent,
                quiz: theory.quiz,
                isQuizDone: true,
                score: updatedScore,
                dataId: json.decode(response.body)['name']);
          }
          print("4 " + authToken);
          return theory;
        }).toList();
      }
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Theory findById(String id) {
    return _items.firstWhere((t) => id == t.id);
  }
}
