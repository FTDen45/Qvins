import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class MyModel with ChangeNotifier {
  //String _foo;
  num numer = 0;
  bool girls = true;
  bool boys = false;
  bool any = false;
  num page = 0;
  num selectedIndex = 2;
  num numBar = 0;
  bool messageFriends = true;

  bool meropriatie = false;
  bool people = false;
  bool main = true;
  bool message = false;
  bool profile = false;

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

  bool get meropriatie2 {
    return meropriatie;
  }

  bool get people2 {
    return people;
  }

  bool get main2 {
    return main;
  }

  bool get message2 {
    return message;
  }

  bool get profile2 {
    return profile;
  }

  num get page2 {
    return page;
  }

  num get selectedIndex2 {
    return selectedIndex;
  }

  num get numBar2 {
    return numBar;
  }

  bool get messageFriends2 {
    return messageFriends;
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

  void set meropriatie2(bool meropriatie) {
    meropriatie = meropriatie2;
    notifyListeners();
  }

  void set people2(bool people2) {
    people = people2;
    notifyListeners();
  }

  void set main2(bool main2) {
    main = main2;
    notifyListeners();
  }

  void set message2(bool message2) {
    message = message2;
    notifyListeners();
  }

  void set profile2(bool profile2) {
    profile = profile2;
    notifyListeners();
  }

  void set page2(int page2) {
    page = page2;
    notifyListeners();
  }

  void set selectedIndex2(num selectedIndex2) {
    selectedIndex = selectedIndex2;
    notifyListeners();
  }

  void set numBar2(num numBar2) {
    numBar = numBar2;
    notifyListeners();
  }

  void set messageFriends2(bool messageFriends2) {
    messageFriends = messageFriends2;
    notifyListeners();
  }
}
