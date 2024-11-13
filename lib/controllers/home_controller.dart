import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int count = 1;
  int currentIndex = 0;

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void increaseCount() async {
    try {
      count++;
      notifyListeners();
    } catch (_) {}
  }

  void decreaseCount() async {
    try {
      count--;
      notifyListeners();
    } catch (_) {}
  }
}
