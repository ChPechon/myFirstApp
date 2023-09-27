import 'package:flutter/material.dart';

class ScoreModel extends ChangeNotifier {
  final List<int> _score = [1];
  List get score => _score;

  void  choose(int choice) {
    _score.removeLast();
    _score.add(choice);
    notifyListeners();
  }

  void  next() {
    _score.add(1);
    notifyListeners();
  }

  void  previous() {
    _score.removeLast();
    notifyListeners();
  }

  void  reset() {
    _score.clear();
    _score.add(1);
  }

  int getResult() {
    return _score.reduce((a, b) => a + b);
  }

  int getLength() {
    return _score.length;
  }
}