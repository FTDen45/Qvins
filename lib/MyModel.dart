import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class MyModel with ChangeNotifier {
  //String _foo;
  num numer = 0;
  bool girls = true;
  bool boys = false;
  bool any = false;
  num page = 0;

  //String get foo => _foo;
  int get numer2 {
    return numer;
  }

  bool get girls2 {
    return girls;
  }

  bool get boys2 {
    return boys;
  }

  bool get any2 {
    return any;
  }

  num get page2 {
    return page;
  }

  void set numer2(num numer2) {
    numer = numer2;
    notifyListeners();
  }

  void set girls2(bool girls2) {
    girls = girls2;
    notifyListeners();
  }

  void set boys2(bool boys2) {
    boys = boys2;
    notifyListeners();
  }

  void set any2(bool any2) {
    any = any2;
    notifyListeners();
  }

  void set page2(int page2) {
    page = page2;
    notifyListeners();
  }
}
