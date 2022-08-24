import 'package:flutter/material.dart';

class ProviderDemoModel extends ChangeNotifier {
  String message = "My new App";
  String username = "unknown123";
  List<String> namesList = [];

  void addData(newText) {
    namesList.add(newText);
    notifyListeners();
  }

  void Delete(int index) {
    namesList.removeAt(index);
    notifyListeners();
  }
}
